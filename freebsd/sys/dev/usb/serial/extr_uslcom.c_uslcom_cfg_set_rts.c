
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct uslcom_softc {int sc_ucom; int sc_udev; int sc_iface_no; } ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct ucom_softc {struct uslcom_softc* sc_parent; } ;


 int DPRINTF (char*,...) ;
 int USETW (int ,int ) ;
 int USLCOM_MHS_RTS_ON ;
 int USLCOM_MHS_RTS_SET ;
 int USLCOM_SET_MHS ;
 int USLCOM_WRITE ;
 scalar_t__ ucom_cfg_do_request (int ,int *,struct usb_device_request*,int *,int ,int) ;

__attribute__((used)) static void
uslcom_cfg_set_rts(struct ucom_softc *ucom, uint8_t onoff)
{
 struct uslcom_softc *sc = ucom->sc_parent;
 struct usb_device_request req;
 uint16_t ctl;

 DPRINTF("onoff = %d\n", onoff);

 ctl = onoff ? USLCOM_MHS_RTS_ON : 0;
 ctl |= USLCOM_MHS_RTS_SET;

 req.bmRequestType = USLCOM_WRITE;
 req.bRequest = USLCOM_SET_MHS;
 USETW(req.wValue, ctl);
 USETW(req.wIndex, sc->sc_iface_no);
 USETW(req.wLength, 0);

 if (ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
     &req, ((void*)0), 0, 1000)) {
  DPRINTF("Setting DTR failed (ignored)\n");
 }
}
