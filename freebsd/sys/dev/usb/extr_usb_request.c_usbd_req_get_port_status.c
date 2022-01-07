
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef scalar_t__ uint8_t ;
struct usb_port_status {int dummy; } ;
struct usb_device_request {int wLength; scalar_t__* wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;


 int UR_GET_STATUS ;
 int USETW (int ,int) ;
 int UT_READ_CLASS_OTHER ;
 int usbd_do_request_flags (struct usb_device*,struct mtx*,struct usb_device_request*,struct usb_port_status*,int ,int *,int) ;

usb_error_t
usbd_req_get_port_status(struct usb_device *udev, struct mtx *mtx,
    struct usb_port_status *ps, uint8_t port)
{
 struct usb_device_request req;

 req.bmRequestType = UT_READ_CLASS_OTHER;
 req.bRequest = UR_GET_STATUS;
 USETW(req.wValue, 0);
 req.wIndex[0] = port;
 req.wIndex[1] = 0;
 USETW(req.wLength, sizeof(*ps));

 return (usbd_do_request_flags(udev, mtx, &req, ps, 0, ((void*)0), 1000));
}
