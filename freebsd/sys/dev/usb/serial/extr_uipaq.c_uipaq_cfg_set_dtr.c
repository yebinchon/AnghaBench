
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct usb_device_request {int wLength; scalar_t__* wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct uipaq_softc {int sc_ucom; int sc_udev; int sc_line; } ;
struct ucom_softc {struct uipaq_softc* sc_parent; } ;


 int DPRINTF (char*,scalar_t__) ;
 int UCDC_LINE_DTR ;
 int UCDC_SET_CONTROL_LINE_STATE ;
 scalar_t__ UIPAQ_IFACE_INDEX ;
 int USETW (int ,int ) ;
 int UT_WRITE_CLASS_INTERFACE ;
 int ucom_cfg_do_request (int ,int *,struct usb_device_request*,int *,int ,int) ;

__attribute__((used)) static void
uipaq_cfg_set_dtr(struct ucom_softc *ucom, uint8_t onoff)
{
 struct uipaq_softc *sc = ucom->sc_parent;
 struct usb_device_request req;

 DPRINTF("onoff=%d\n", onoff);

 if (onoff)
  sc->sc_line |= UCDC_LINE_DTR;
 else
  sc->sc_line &= ~UCDC_LINE_DTR;

 req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
 req.bRequest = UCDC_SET_CONTROL_LINE_STATE;
 USETW(req.wValue, sc->sc_line);
 req.wIndex[0] = UIPAQ_IFACE_INDEX;
 req.wIndex[1] = 0;
 USETW(req.wLength, 0);

 ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
     &req, ((void*)0), 0, 1000);
}
