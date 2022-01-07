
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_hub_status {int dummy; } ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;


 int UR_GET_STATUS ;
 int USETW (int ,int) ;
 int UT_READ_CLASS_DEVICE ;
 int usbd_do_request (struct usb_device*,struct mtx*,struct usb_device_request*,struct usb_hub_status*) ;

usb_error_t
usbd_req_get_hub_status(struct usb_device *udev, struct mtx *mtx,
    struct usb_hub_status *st)
{
 struct usb_device_request req;

 req.bmRequestType = UT_READ_CLASS_DEVICE;
 req.bRequest = UR_GET_STATUS;
 USETW(req.wValue, 0);
 USETW(req.wIndex, 0);
 USETW(req.wLength, sizeof(struct usb_hub_status));
 return (usbd_do_request(udev, mtx, &req, st));
}
