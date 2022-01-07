
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uslcom_softc {int sc_ucom; int sc_udev; int sc_iface_no; int sc_watchdog; } ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct ucom_softc {struct uslcom_softc* sc_parent; } ;


 int DPRINTF (char*) ;
 int USETW (int ,int ) ;
 int USLCOM_IFC_ENABLE ;
 int USLCOM_IFC_ENABLE_DIS ;
 int USLCOM_WRITE ;
 scalar_t__ ucom_cfg_do_request (int ,int *,struct usb_device_request*,int *,int ,int) ;
 int usb_callout_stop (int *) ;

__attribute__((used)) static void
uslcom_cfg_close(struct ucom_softc *ucom)
{
 struct uslcom_softc *sc = ucom->sc_parent;
 struct usb_device_request req;


 usb_callout_stop(&sc->sc_watchdog);

 req.bmRequestType = USLCOM_WRITE;
 req.bRequest = USLCOM_IFC_ENABLE;
 USETW(req.wValue, USLCOM_IFC_ENABLE_DIS);
 USETW(req.wIndex, sc->sc_iface_no);
 USETW(req.wLength, 0);

 if (ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
     &req, ((void*)0), 0, 1000)) {
  DPRINTF("UART disable failed (ignored)\n");
 }
}
