
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct ural_softc {int sc_dev; } ;


 int RAL_READ_EEPROM ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_DEVICE ;
 int device_printf (int ,char*,int ) ;
 scalar_t__ ural_do_request (struct ural_softc*,struct usb_device_request*,void*) ;
 int usbd_errstr (scalar_t__) ;

__attribute__((used)) static void
ural_eeprom_read(struct ural_softc *sc, uint16_t addr, void *buf, int len)
{
 struct usb_device_request req;
 usb_error_t error;

 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = RAL_READ_EEPROM;
 USETW(req.wValue, 0);
 USETW(req.wIndex, addr);
 USETW(req.wLength, len);

 error = ural_do_request(sc, &req, buf);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not read EEPROM: %s\n",
      usbd_errstr(error));
 }
}
