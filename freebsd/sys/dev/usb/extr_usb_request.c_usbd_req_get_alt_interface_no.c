
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


 int UR_GET_INTERFACE ;
 int USB_ERR_INVAL ;
 int USETW (int ,int) ;
 int UT_READ_INTERFACE ;
 int usbd_do_request (struct usb_device*,struct mtx*,struct usb_device_request*,int *) ;
 struct usb_interface* usbd_get_iface (struct usb_device*,int ) ;

usb_error_t
usbd_req_get_alt_interface_no(struct usb_device *udev, struct mtx *mtx,
    uint8_t *alt_iface_no, uint8_t iface_index)
{
 struct usb_interface *iface = usbd_get_iface(udev, iface_index);
 struct usb_device_request req;

 if ((iface == ((void*)0)) || (iface->idesc == ((void*)0)))
  return (USB_ERR_INVAL);

 req.bmRequestType = UT_READ_INTERFACE;
 req.bRequest = UR_GET_INTERFACE;
 USETW(req.wValue, 0);
 req.wIndex[0] = iface->idesc->bInterfaceNumber;
 req.wIndex[1] = 0;
 USETW(req.wLength, 1);
 return (usbd_do_request(udev, mtx, &req, alt_iface_no));
}
