
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct usb_device {int dummy; } ;
struct bbb_transfer {int dummy; } ;
typedef int data ;


 int UICLASS_HID ;
 int USB_ERR_INVAL ;
 int USB_MS_HZ ;
 struct bbb_transfer* bbb_attach (struct usb_device*,int,int ) ;
 int bbb_detach (struct bbb_transfer*) ;
 int bbb_raw_write (struct bbb_transfer*,int const*,int,int ) ;

usb_error_t
usb_dymo_eject(struct usb_device *udev, uint8_t iface_index)
{
 static const uint8_t data[3] = { 0x1b, 0x5a, 0x01 };
 struct bbb_transfer *sc;
 usb_error_t err;

 sc = bbb_attach(udev, iface_index, UICLASS_HID);
 if (sc == ((void*)0))
  return (USB_ERR_INVAL);
 err = bbb_raw_write(sc, data, sizeof(data), USB_MS_HZ);
 bbb_detach(sc);
 return (err);
}
