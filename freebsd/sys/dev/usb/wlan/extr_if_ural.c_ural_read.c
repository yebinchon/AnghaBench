
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct ural_softc {int sc_dev; } ;


 int RAL_READ_MAC ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_DEVICE ;
 int device_printf (int ,char*,int ) ;
 int le16toh (int) ;
 scalar_t__ ural_do_request (struct ural_softc*,struct usb_device_request*,int*) ;
 int usbd_errstr (scalar_t__) ;

__attribute__((used)) static uint16_t
ural_read(struct ural_softc *sc, uint16_t reg)
{
 struct usb_device_request req;
 usb_error_t error;
 uint16_t val;

 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = RAL_READ_MAC;
 USETW(req.wValue, 0);
 USETW(req.wIndex, reg);
 USETW(req.wLength, sizeof (uint16_t));

 error = ural_do_request(sc, &req, &val);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not read MAC register: %s\n",
      usbd_errstr(error));
  return 0;
 }

 return le16toh(val);
}
