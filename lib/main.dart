import 'package:flutter/material.dart';
import 'package:my_app/hello_widget.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var app = MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.orange,
      ),
      title: 'my app',
      home: CounterArea(),
    );

    return app;
  }
}

class CounterAreaStatic extends StatelessWidget {
  const CounterAreaStatic({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CounterArea extends StatefulWidget {
  const CounterArea({super.key});

  @override
  State<CounterArea> createState() => _CounterAreaState();
}

class _CounterAreaState extends State<CounterArea> {
  var _count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "count: $_count",
              style: TextStyle(fontSize: 60.5),
            ),
            Text("กดปุ่มเพื่อเพิ่มตัวนับ")
          ],
        ),
      ),
    );
  }
}
