
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static uint8_t
ukbd_apple_swap(uint8_t keycode) {
 switch (keycode) {
 case 0x35: return 0x64;
 case 0x64: return 0x35;
 default: return keycode;
 }
}
