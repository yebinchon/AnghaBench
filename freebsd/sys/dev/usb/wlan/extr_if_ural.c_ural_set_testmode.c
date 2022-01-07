
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct ural_softc {int sc_dev; } ;


 int RAL_VENDOR_REQUEST ;
 int USETW (int ,int) ;
 int UT_WRITE_VENDOR_DEVICE ;
 int device_printf (int ,char*,int ) ;
 scalar_t__ ural_do_request (struct ural_softc*,struct usb_device_request*,int *) ;
 int usbd_errstr (scalar_t__) ;

__attribute__((used)) static void
ural_set_testmode(struct ural_softc *sc)
{
 struct usb_device_request req;
 usb_error_t error;

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = RAL_VENDOR_REQUEST;
 USETW(req.wValue, 4);
 USETW(req.wIndex, 1);
 USETW(req.wLength, 0);

 error = ural_do_request(sc, &req, ((void*)0));
 if (error != 0) {
  device_printf(sc->sc_dev, "could not set test mode: %s\n",
      usbd_errstr(error));
 }
}
