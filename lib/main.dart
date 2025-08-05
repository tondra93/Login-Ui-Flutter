import 'package:flutter/material.dart';
import 'package:login_form/login.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_form/providers/auth_provider.dart';
import 'screens/welcome_screen.dart';
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loggedIn = ref.watch(authProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loggedIn ? const WelcomeScreen() : const LoginPage(),
    );
  }
}

