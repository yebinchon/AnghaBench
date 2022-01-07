
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t USB_XFERTYPE_MAX ;
 char const** xfertype_table ;

__attribute__((used)) static const char *
usb_xferstr(uint8_t type)
{
 if (type >= USB_XFERTYPE_MAX || xfertype_table[type] == ((void*)0))
  return ("UNKN");
 else
  return (xfertype_table[type]);
}
