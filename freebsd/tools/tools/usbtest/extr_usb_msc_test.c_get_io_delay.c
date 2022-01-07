
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_msc_params {int io_delay; } ;
__attribute__((used)) static const char *
get_io_delay(const struct usb_msc_params *p)
{
 ;
 switch (p->io_delay) {
 case 130:
  return ("None");
 case 128:
  return ("Random 10ms");
 case 129:
  return ("Random 100ms");
 case 131:
  return ("Fixed 10ms");
 case 132:
  return ("Fixed 100ms");
 default:
  return ("Unknown");
 }
}
