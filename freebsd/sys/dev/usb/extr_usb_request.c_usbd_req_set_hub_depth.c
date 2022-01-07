
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;


 int UR_SET_HUB_DEPTH ;
 int USETW (int ,int ) ;
 int UT_WRITE_CLASS_DEVICE ;
 int usbd_do_request (struct usb_device*,struct mtx*,struct usb_device_request*,int ) ;

usb_error_t
usbd_req_set_hub_depth(struct usb_device *udev, struct mtx *mtx,
    uint16_t depth)
{
 struct usb_device_request req;

 req.bmRequestType = UT_WRITE_CLASS_DEVICE;
 req.bRequest = UR_SET_HUB_DEPTH;
 USETW(req.wValue, depth);
 USETW(req.wIndex, 0);
 USETW(req.wLength, 0);
 return (usbd_do_request(udev, mtx, &req, 0));
}
