
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_device_request {int wLength; scalar_t__* wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct usb_device {int dummy; } ;
struct uplcom_softc {scalar_t__ sc_data_iface_no; } ;


 int UPLCOM_SET_REQUEST ;
 int USETW (int ,int ) ;
 int UT_WRITE_VENDOR_DEVICE ;
 int usbd_do_request (struct usb_device*,int *,struct usb_device_request*,int *) ;

__attribute__((used)) static usb_error_t
uplcom_reset(struct uplcom_softc *sc, struct usb_device *udev)
{
 struct usb_device_request req;

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = UPLCOM_SET_REQUEST;
 USETW(req.wValue, 0);
 req.wIndex[0] = sc->sc_data_iface_no;
 req.wIndex[1] = 0;
 USETW(req.wLength, 0);

 return (usbd_do_request(udev, ((void*)0), &req, ((void*)0)));
}
