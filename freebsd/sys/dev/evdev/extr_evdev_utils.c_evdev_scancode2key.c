
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int KEY_PAUSE ;
 int NONE ;
 int * evdev_at_set1_scancodes ;

uint16_t
evdev_scancode2key(int *state, int scancode)
{
 uint16_t keycode;


 keycode = evdev_at_set1_scancodes[scancode & 0x7f];
 switch (*state) {
 case 0x00:
  switch(scancode) {
  case 0xE0:
  case 0xE1:
   *state = scancode;
   return (NONE);
  }
  break;
 case 0xE0:
  *state = 0;
  keycode = evdev_at_set1_scancodes[0x80 + (scancode & 0x7f)];
  break;
 case 0xE1:






  *state = 0;
  if ((scancode & 0x7f) == 0x1D)
   *state = scancode;
  return (NONE);

 case 0x1D:
 case 0x9D:
  if ((*state ^ scancode) & 0x80)
   return (NONE);
  *state = 0;
  if ((scancode & 0x7f) != 0x45)
   return (NONE);
  keycode = KEY_PAUSE;
  break;
 }

 return (keycode);
}
