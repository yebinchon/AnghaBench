
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef scalar_t__ uint8_t ;
struct usb_interface {int idesc; } ;
struct usb_device {int cdesc; } ;


 int USB_ERR_INVAL ;
 scalar_t__ usbd_enum_lock (struct usb_device*) ;
 int usbd_enum_unlock (struct usb_device*) ;
 scalar_t__ usbd_get_no_alts (int ,int ) ;

__attribute__((used)) static usb_error_t
usb_check_alt_setting(struct usb_device *udev,
     struct usb_interface *iface, uint8_t alt_index)
{
 uint8_t do_unlock;
 usb_error_t err = 0;


 do_unlock = usbd_enum_lock(udev);

 if (alt_index >= usbd_get_no_alts(udev->cdesc, iface->idesc))
  err = USB_ERR_INVAL;

 if (do_unlock)
  usbd_enum_unlock(udev);

 return (err);
}
