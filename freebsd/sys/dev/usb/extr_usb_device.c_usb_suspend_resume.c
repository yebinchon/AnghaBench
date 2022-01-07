
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef scalar_t__ uint8_t ;
struct usb_interface {int subdev; } ;
struct TYPE_2__ {scalar_t__ peer_suspended; } ;
struct usb_device {int bus; TYPE_1__ flags; int sr_sx; } ;


 int DPRINTFN (int,char*,struct usb_device*,scalar_t__) ;
 int SA_LOCKED ;
 int USB_BUS_LOCK (int ) ;
 int USB_BUS_UNLOCK (int ) ;
 scalar_t__ USB_IFACE_MAX ;
 int sx_assert (int *,int ) ;
 int usb_suspend_resume_sub (struct usb_device*,int ,scalar_t__) ;
 struct usb_interface* usbd_get_iface (struct usb_device*,scalar_t__) ;

usb_error_t
usb_suspend_resume(struct usb_device *udev, uint8_t do_suspend)
{
 struct usb_interface *iface;
 uint8_t i;

 if (udev == ((void*)0)) {

  return (0);
 }
 DPRINTFN(4, "udev=%p do_suspend=%d\n", udev, do_suspend);

 sx_assert(&udev->sr_sx, SA_LOCKED);

 USB_BUS_LOCK(udev->bus);

 if (udev->flags.peer_suspended == do_suspend) {
  USB_BUS_UNLOCK(udev->bus);

  return (0);
 }
 udev->flags.peer_suspended = do_suspend;
 USB_BUS_UNLOCK(udev->bus);



 for (i = 0; i != USB_IFACE_MAX; i++) {

  iface = usbd_get_iface(udev, i);
  if (iface == ((void*)0)) {

   break;
  }
  usb_suspend_resume_sub(udev, iface->subdev, do_suspend);
 }
 return (0);
}
