import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = 'Hello, World!';
  Color bgColor = Colors.white;

  void addText() {
    setState(() {
      text += ' ✨';
    });
  }

  void removeText() {
    setState(() {
      text = text.isNotEmpty ? text.substring(0, text.length - 2) : '';
    });
  }

  void changeColor() {
    setState(() {
      bgColor = bgColor == Colors.white ? Colors.purple[100]! : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(title: const Text("Flutter Demo")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: addText,
                  child: const Text("Добавить ✨"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: removeText,
                  child: const Text("Удалить ❌"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: changeColor,
                  child: const Text("Изменить фон 🎨"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
