
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef scalar_t__ uint8_t ;
struct usb_device_request {int wLength; int wIndex; scalar_t__* wValue; int bRequest; int bmRequestType; } ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;


 int DPRINTF (char*,scalar_t__) ;
 int UR_SET_CONFIG ;
 int USETW (int ,int ) ;
 int UT_WRITE_DEVICE ;
 int usbd_do_request (struct usb_device*,struct mtx*,struct usb_device_request*,int ) ;

usb_error_t
usbd_req_set_config(struct usb_device *udev, struct mtx *mtx, uint8_t conf)
{
 struct usb_device_request req;

 DPRINTF("setting config %d\n", conf);



 req.bmRequestType = UT_WRITE_DEVICE;
 req.bRequest = UR_SET_CONFIG;
 req.wValue[0] = conf;
 req.wValue[1] = 0;
 USETW(req.wIndex, 0);
 USETW(req.wLength, 0);
 return (usbd_do_request(udev, mtx, &req, 0));
}
