
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
typedef scalar_t__ uint8_t ;
struct usb_interface {scalar_t__ alt_index; TYPE_1__* idesc; } ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {int bAlternateSetting; } ;


 scalar_t__ USB_ERR_INVAL ;
 scalar_t__ usb_config_parse (struct usb_device*,scalar_t__,scalar_t__) ;
 int usb_fifo_free_wrap (struct usb_device*,scalar_t__,int ) ;
 scalar_t__ usbd_enum_lock (struct usb_device*) ;
 int usbd_enum_unlock (struct usb_device*) ;
 struct usb_interface* usbd_get_iface (struct usb_device*,scalar_t__) ;
 scalar_t__ usbd_req_set_alt_interface_no (struct usb_device*,int *,scalar_t__,int ) ;

usb_error_t
usbd_set_alt_interface_index(struct usb_device *udev,
    uint8_t iface_index, uint8_t alt_index)
{
 struct usb_interface *iface = usbd_get_iface(udev, iface_index);
 usb_error_t err;
 uint8_t do_unlock;


 do_unlock = usbd_enum_lock(udev);

 if (iface == ((void*)0)) {
  err = USB_ERR_INVAL;
  goto done;
 }
 if (iface->alt_index == alt_index) {




  err = 0;
  goto done;
 }
 err = usb_config_parse(udev, iface_index, alt_index);
 if (err) {
  goto done;
 }
 if (iface->alt_index != alt_index) {

  err = USB_ERR_INVAL;
  goto done;
 }

 err = usbd_req_set_alt_interface_no(udev, ((void*)0), iface_index,
     iface->idesc->bAlternateSetting);

done:
 if (do_unlock)
  usbd_enum_unlock(udev);
 return (err);
}
