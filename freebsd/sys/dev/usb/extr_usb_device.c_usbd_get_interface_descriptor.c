
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface_descriptor {int dummy; } ;
struct usb_interface {struct usb_interface_descriptor* idesc; } ;



struct usb_interface_descriptor *
usbd_get_interface_descriptor(struct usb_interface *iface)
{
 if (iface == ((void*)0))
  return (((void*)0));
 return (iface->idesc);
}
