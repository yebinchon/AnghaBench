
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_udev_msg {struct usb_device* udev; } ;
struct usb_proc_msg {int dummy; } ;
struct usb_device {int bus; int device_mtx; int * ctrl_xfer; } ;


 int USB_BUS_LOCK (int ) ;
 int USB_BUS_UNLOCK (int ) ;
 int USB_MTX_LOCK (int *) ;
 int USB_MTX_UNLOCK (int *) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
usbd_clear_stall_proc(struct usb_proc_msg *_pm)
{
 struct usb_udev_msg *pm = (void *)_pm;
 struct usb_device *udev = pm->udev;


 USB_BUS_UNLOCK(udev->bus);
 USB_MTX_LOCK(&udev->device_mtx);


 usbd_transfer_start(udev->ctrl_xfer[1]);


 USB_MTX_UNLOCK(&udev->device_mtx);
 USB_BUS_LOCK(udev->bus);
}
