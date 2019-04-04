import 'dart:async';

import 'package:flutter/services.dart';

class HelloPlugin {
  static const MethodChannel _channel =
      const MethodChannel('hello_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<int> get batteryLevel async {
    final int batteryLevel = await _channel.invokeMethod('getBatteryLevel');
    return batteryLevel;
  }

  static Future<String> get platformVersion2 async {
    // final String version = await _channel.invokeMethod('getPlatformVersion');
    return "222";
  }
}
