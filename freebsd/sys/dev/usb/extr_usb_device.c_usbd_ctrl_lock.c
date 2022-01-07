
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_device {int ctrl_sx; } ;


 int sx_xlock (int *) ;
 scalar_t__ sx_xlocked (int *) ;
 scalar_t__ usbd_enum_is_locked (struct usb_device*) ;
 int usbd_sr_unlock (struct usb_device*) ;

uint8_t
usbd_ctrl_lock(struct usb_device *udev)
{
 if (sx_xlocked(&udev->ctrl_sx))
  return (0);
 sx_xlock(&udev->ctrl_sx);





 if (usbd_enum_is_locked(udev))
  usbd_sr_unlock(udev);
 return (1);
}
