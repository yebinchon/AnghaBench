
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct usb_interface {int pnpinfo; int subdev; } ;
struct usb_device {int enum_sx; } ;


 int DPRINTFN (int,char*,struct usb_device*) ;
 int SA_LOCKED ;
 scalar_t__ USB_IFACE_INDEX_ANY ;
 scalar_t__ USB_IFACE_MAX ;
 int sx_assert (int *,int ) ;
 int usb_detach_device_sub (struct usb_device*,int *,int *,scalar_t__) ;
 struct usb_interface* usbd_get_iface (struct usb_device*,scalar_t__) ;

void
usb_detach_device(struct usb_device *udev, uint8_t iface_index,
    uint8_t flag)
{
 struct usb_interface *iface;
 uint8_t i;

 if (udev == ((void*)0)) {

  return;
 }
 DPRINTFN(4, "udev=%p\n", udev);

 sx_assert(&udev->enum_sx, SA_LOCKED);







 if (iface_index != USB_IFACE_INDEX_ANY) {
  i = iface_index;
  iface_index = i + 1;
 } else {
  i = 0;
  iface_index = USB_IFACE_MAX;
 }



 for (; i != iface_index; i++) {

  iface = usbd_get_iface(udev, i);
  if (iface == ((void*)0)) {

   break;
  }
  usb_detach_device_sub(udev, &iface->subdev,
      &iface->pnpinfo, flag);
 }
}
