
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
struct usb_device_request {int bRequest; int wLength; int wIndex; int wValue; int bmRequestType; } ;
struct uhso_softc {int sc_dev; int sc_udev; } ;


 int USETW (int ,int ) ;
 int UT_VENDOR ;
 int device_printf (int ,char*,int ) ;
 scalar_t__ usbd_do_request (int ,int *,struct usb_device_request*,int *) ;
 int usbd_errstr (scalar_t__) ;

__attribute__((used)) static int
uhso_radio_ctrl(struct uhso_softc *sc, int onoff)
{
 struct usb_device_request req;
 usb_error_t uerr;

 req.bmRequestType = UT_VENDOR;
 req.bRequest = onoff ? 0x82 : 0x81;
 USETW(req.wValue, 0);
 USETW(req.wIndex, 0);
 USETW(req.wLength, 0);

 uerr = usbd_do_request(sc->sc_udev, ((void*)0), &req, ((void*)0));
 if (uerr != 0) {
  device_printf(sc->sc_dev, "usbd_do_request_flags failed: %s\n",
      usbd_errstr(uerr));
  return (-1);
 }
 return (onoff);
}
