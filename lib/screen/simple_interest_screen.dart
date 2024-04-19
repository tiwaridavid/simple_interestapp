import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterestScreen> {
  // Delcare variables
  double? principal;
  double? time;
  double? rate;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: const Text('Arithmetic'),
          backgroundColor: const Color.fromARGB(255, 54, 81, 94),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(9),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  principal = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Principal'
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  time = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Time'
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  rate = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Rate'
                ),
              ),
              const SizedBox(height: 8),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      result = (principal! * time! * rate!)/100;
                    });
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Display informatuion
              Text(
                'Simple Interest is : $result',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        )
    );
  }
}