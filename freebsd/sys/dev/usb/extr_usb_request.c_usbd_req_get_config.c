
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;


 int UR_GET_CONFIG ;
 int USETW (int ,int) ;
 int UT_READ_DEVICE ;
 int usbd_do_request (struct usb_device*,struct mtx*,struct usb_device_request*,int *) ;

usb_error_t
usbd_req_get_config(struct usb_device *udev, struct mtx *mtx, uint8_t *pconf)
{
 struct usb_device_request req;

 req.bmRequestType = UT_READ_DEVICE;
 req.bRequest = UR_GET_CONFIG;
 USETW(req.wValue, 0);
 USETW(req.wIndex, 0);
 USETW(req.wLength, 1);
 return (usbd_do_request(udev, mtx, &req, pconf));
}
