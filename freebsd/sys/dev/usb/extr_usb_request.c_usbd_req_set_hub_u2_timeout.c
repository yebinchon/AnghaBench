
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef void* uint8_t ;
struct usb_device_request {int wLength; void** wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;


 int UHF_PORT_U2_TIMEOUT ;
 int UR_SET_FEATURE ;
 int USETW (int ,int ) ;
 int UT_WRITE_CLASS_OTHER ;
 int usbd_do_request (struct usb_device*,struct mtx*,struct usb_device_request*,int ) ;

usb_error_t
usbd_req_set_hub_u2_timeout(struct usb_device *udev, struct mtx *mtx,
    uint8_t port, uint8_t timeout)
{
 struct usb_device_request req;

 req.bmRequestType = UT_WRITE_CLASS_OTHER;
 req.bRequest = UR_SET_FEATURE;
 USETW(req.wValue, UHF_PORT_U2_TIMEOUT);
 req.wIndex[0] = port;
 req.wIndex[1] = timeout;
 USETW(req.wLength, 0);
 return (usbd_do_request(udev, mtx, &req, 0));
}
