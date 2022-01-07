
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int * evdev_usb_scancodes ;

uint16_t
evdev_hid2key(int scancode)
{
 return evdev_usb_scancodes[scancode];
}
