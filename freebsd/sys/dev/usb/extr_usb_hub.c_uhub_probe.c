
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bConfigIndex; scalar_t__ bDeviceClass; } ;
struct usb_attach_arg {scalar_t__ usb_mode; TYPE_1__ info; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ UDCLASS_HUB ;
 scalar_t__ USB_MODE_HOST ;
 struct usb_attach_arg* device_get_ivars (int ) ;

int
uhub_probe(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);

 if (uaa->usb_mode != USB_MODE_HOST)
  return (ENXIO);





 if (uaa->info.bConfigIndex == 0 &&
     uaa->info.bDeviceClass == UDCLASS_HUB)
  return (BUS_PROBE_DEFAULT);

 return (ENXIO);
}
