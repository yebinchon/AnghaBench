
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct uftdi_softc {int sc_ucom; int sc_udev; int sc_last_lcr; } ;
struct ucom_softc {int sc_portno; struct uftdi_softc* sc_parent; } ;


 int DPRINTFN (int,char*,scalar_t__) ;
 int FTDI_SIO_SET_BREAK ;
 int FTDI_SIO_SET_DATA ;
 int USETW (int ,int ) ;
 int UT_WRITE_VENDOR_DEVICE ;
 int ucom_cfg_do_request (int ,int *,struct usb_device_request*,int *,int ,int) ;

__attribute__((used)) static void
uftdi_cfg_set_break(struct ucom_softc *ucom, uint8_t onoff)
{
 struct uftdi_softc *sc = ucom->sc_parent;
 uint16_t wIndex = ucom->sc_portno;
 uint16_t wValue;
 struct usb_device_request req;

 DPRINTFN(2, "BREAK=%u\n", onoff);

 if (onoff) {
  sc->sc_last_lcr |= FTDI_SIO_SET_BREAK;
 } else {
  sc->sc_last_lcr &= ~FTDI_SIO_SET_BREAK;
 }

 wValue = sc->sc_last_lcr;

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = FTDI_SIO_SET_DATA;
 USETW(req.wValue, wValue);
 USETW(req.wIndex, wIndex);
 USETW(req.wLength, 0);
 ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
     &req, ((void*)0), 0, 1000);
}
