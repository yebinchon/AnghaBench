
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_attach_arg {scalar_t__ usb_mode; } ;
struct umass_probe_proto {int error; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ USB_MODE_HOST ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct umass_probe_proto umass_probe_proto (int ,struct usb_attach_arg*) ;

__attribute__((used)) static int
umass_probe(device_t dev)
{
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct umass_probe_proto temp;

 if (uaa->usb_mode != USB_MODE_HOST) {
  return (ENXIO);
 }
 temp = umass_probe_proto(dev, uaa);

 return (temp.error);
}
