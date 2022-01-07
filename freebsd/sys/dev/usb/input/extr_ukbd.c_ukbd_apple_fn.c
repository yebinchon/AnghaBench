
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static uint8_t
ukbd_apple_fn(uint8_t keycode) {
 switch (keycode) {
 case 0x28: return 0x49;
 case 0x2a: return 0x4c;
 case 0x50: return 0x4a;
 case 0x4f: return 0x4d;
 case 0x52: return 0x4b;
 case 0x51: return 0x4e;
 default: return keycode;
 }
}
