
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bInterfaceClass; int bInterfaceSubClass; } ;
struct usb_attach_arg {scalar_t__ usb_mode; TYPE_1__ info; int device; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ USB_MODE_HOST ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int usb_get_manufacturer (int ) ;

__attribute__((used)) static int
ubser_probe(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);

 if (uaa->usb_mode != USB_MODE_HOST) {
  return (ENXIO);
 }

 if ((strcmp(usb_get_manufacturer(uaa->device), "BWCT") == 0) &&
     (uaa->info.bInterfaceClass == 0xff) &&
     (uaa->info.bInterfaceSubClass == 0x00))
  return (0);

 return (ENXIO);
}
