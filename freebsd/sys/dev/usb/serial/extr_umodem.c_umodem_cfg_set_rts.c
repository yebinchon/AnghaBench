
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct usb_device_request {int wLength; scalar_t__* wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct umodem_softc {int sc_ucom; int sc_udev; scalar_t__ sc_ctrl_iface_no; int sc_line; } ;
struct ucom_softc {struct umodem_softc* sc_parent; } ;


 int DPRINTF (char*,scalar_t__) ;
 int UCDC_LINE_RTS ;
 int UCDC_SET_CONTROL_LINE_STATE ;
 int USETW (int ,int ) ;
 int UT_WRITE_CLASS_INTERFACE ;
 int ucom_cfg_do_request (int ,int *,struct usb_device_request*,int *,int ,int) ;

__attribute__((used)) static void
umodem_cfg_set_rts(struct ucom_softc *ucom, uint8_t onoff)
{
 struct umodem_softc *sc = ucom->sc_parent;
 struct usb_device_request req;

 DPRINTF("onoff=%d\n", onoff);

 if (onoff)
  sc->sc_line |= UCDC_LINE_RTS;
 else
  sc->sc_line &= ~UCDC_LINE_RTS;

 req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
 req.bRequest = UCDC_SET_CONTROL_LINE_STATE;
 USETW(req.wValue, sc->sc_line);
 req.wIndex[0] = sc->sc_ctrl_iface_no;
 req.wIndex[1] = 0;
 USETW(req.wLength, 0);

 ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
     &req, ((void*)0), 0, 1000);
}
