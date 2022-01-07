
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct rum_softc {int sc_dev; } ;


 int RT2573_READ_MULTI_MAC ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_DEVICE ;
 int device_printf (int ,char*,int ) ;
 scalar_t__ rum_do_request (struct rum_softc*,struct usb_device_request*,void*) ;
 int usbd_errstr (scalar_t__) ;

__attribute__((used)) static void
rum_read_multi(struct rum_softc *sc, uint16_t reg, void *buf, int len)
{
 struct usb_device_request req;
 usb_error_t error;

 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = RT2573_READ_MULTI_MAC;
 USETW(req.wValue, 0);
 USETW(req.wIndex, reg);
 USETW(req.wLength, len);

 error = rum_do_request(sc, &req, buf);
 if (error != 0) {
  device_printf(sc->sc_dev,
      "could not multi read MAC register: %s\n",
      usbd_errstr(error));
 }
}
