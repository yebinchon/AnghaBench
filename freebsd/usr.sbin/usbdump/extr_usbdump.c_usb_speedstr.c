
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t USB_SPEED_MAX ;
 char const** speed_table ;

__attribute__((used)) static const char *
usb_speedstr(uint8_t speed)
{
 if (speed >= USB_SPEED_MAX || speed_table[speed] == ((void*)0))
  return ("UNKNOWN");
 else
  return (speed_table[speed]);
}
