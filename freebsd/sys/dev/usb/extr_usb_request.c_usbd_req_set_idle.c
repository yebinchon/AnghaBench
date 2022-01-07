
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint8_t ;
struct usb_interface {TYPE_1__* idesc; } ;
struct usb_device_request {int wLength; scalar_t__* wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;
struct TYPE_2__ {scalar_t__ bInterfaceNumber; } ;


 int DPRINTFN (int,char*,int ,int ) ;
 int UR_SET_IDLE ;
 int USB_ERR_INVAL ;
 int USETW (int ,int ) ;
 int USETW2 (int ,int ,int ) ;
 int UT_WRITE_CLASS_INTERFACE ;
 int usbd_do_request (struct usb_device*,struct mtx*,struct usb_device_request*,int ) ;
 struct usb_interface* usbd_get_iface (struct usb_device*,int ) ;

usb_error_t
usbd_req_set_idle(struct usb_device *udev, struct mtx *mtx,
    uint8_t iface_index, uint8_t duration, uint8_t id)
{
 struct usb_interface *iface = usbd_get_iface(udev, iface_index);
 struct usb_device_request req;

 if ((iface == ((void*)0)) || (iface->idesc == ((void*)0))) {
  return (USB_ERR_INVAL);
 }
 DPRINTFN(5, "%d %d\n", duration, id);

 req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
 req.bRequest = UR_SET_IDLE;
 USETW2(req.wValue, duration, id);
 req.wIndex[0] = iface->idesc->bInterfaceNumber;
 req.wIndex[1] = 0;
 USETW(req.wLength, 0);
 return (usbd_do_request(udev, mtx, &req, 0));
}
