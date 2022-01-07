
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_interface {int parent_iface_index; } ;
struct usb_device {int dummy; } ;


 struct usb_interface* usbd_get_iface (struct usb_device*,int ) ;

void
usbd_set_parent_iface(struct usb_device *udev, uint8_t iface_index,
    uint8_t parent_index)
{
 struct usb_interface *iface;

 if (udev == ((void*)0)) {

  return;
 }
 iface = usbd_get_iface(udev, iface_index);
 if (iface != ((void*)0))
  iface->parent_iface_index = parent_index;
}
