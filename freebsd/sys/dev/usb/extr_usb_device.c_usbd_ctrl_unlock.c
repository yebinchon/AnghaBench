
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int ctrl_sx; } ;


 int sx_xunlock (int *) ;
 scalar_t__ usbd_enum_is_locked (struct usb_device*) ;
 int usbd_sr_lock (struct usb_device*) ;

void
usbd_ctrl_unlock(struct usb_device *udev)
{
 sx_xunlock(&udev->ctrl_sx);





 if (usbd_enum_is_locked(udev))
  usbd_sr_lock(udev);
}
