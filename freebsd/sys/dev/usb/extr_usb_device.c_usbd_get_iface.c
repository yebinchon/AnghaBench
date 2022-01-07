
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_interface {int dummy; } ;
struct usb_device {int ifaces_max; struct usb_interface* ifaces; } ;



struct usb_interface *
usbd_get_iface(struct usb_device *udev, uint8_t iface_index)
{
 struct usb_interface *iface = udev->ifaces + iface_index;

 if (iface_index >= udev->ifaces_max)
  return (((void*)0));
 return (iface);
}
