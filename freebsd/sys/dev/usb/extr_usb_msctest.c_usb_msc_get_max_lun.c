
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef scalar_t__ uint8_t ;
struct usb_device_request {int bRequest; int wLength; scalar_t__* wIndex; int wValue; int bmRequestType; } ;
struct usb_device {int dummy; } ;


 int USETW (int ,int) ;
 int UT_READ_CLASS_INTERFACE ;
 scalar_t__ usbd_do_request (struct usb_device*,int *,struct usb_device_request*,scalar_t__*) ;

__attribute__((used)) static uint8_t
usb_msc_get_max_lun(struct usb_device *udev, uint8_t iface_index)
{
 struct usb_device_request req;
 usb_error_t err;
 uint8_t buf = 0;



 req.bmRequestType = UT_READ_CLASS_INTERFACE;
 req.bRequest = 0xFE;
 USETW(req.wValue, 0);
 req.wIndex[0] = iface_index;
 req.wIndex[1] = 0;
 USETW(req.wLength, 1);

 err = usbd_do_request(udev, ((void*)0), &req, &buf);
 if (err)
  buf = 0;

 return (buf);
}
