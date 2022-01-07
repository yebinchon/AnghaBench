
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef void* uint8_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; void* bRequest; void* bmRequestType; } ;
struct usb_device {int dummy; } ;


 int DPRINTF (char*,int ) ;
 int USETW (int ,int ) ;
 int usbd_do_request (struct usb_device*,int *,struct usb_device_request*,void**) ;
 int usbd_errstr (int) ;

__attribute__((used)) static usb_error_t
uplcom_pl2303_do(struct usb_device *udev, uint8_t req_type, uint8_t request,
    uint16_t value, uint16_t index, uint16_t length)
{
 struct usb_device_request req;
 usb_error_t err;
 uint8_t buf[4];

 req.bmRequestType = req_type;
 req.bRequest = request;
 USETW(req.wValue, value);
 USETW(req.wIndex, index);
 USETW(req.wLength, length);

 err = usbd_do_request(udev, ((void*)0), &req, buf);
 if (err) {
  DPRINTF("error=%s\n", usbd_errstr(err));
  return (1);
 }
 return (0);
}
