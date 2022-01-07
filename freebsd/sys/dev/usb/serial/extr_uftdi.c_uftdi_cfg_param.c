
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; void* bmRequestType; } ;
struct uftdi_softc {int sc_last_lcr; int sc_ucom; int sc_udev; } ;
struct uftdi_param_config {int lcr; int baud_lobits; int baud_hibits; int v_start; int v_flow; int v_stop; } ;
struct ucom_softc {int sc_portno; struct uftdi_softc* sc_parent; } ;
struct termios {int dummy; } ;


 int DPRINTF (char*) ;
 int FTDI_SIO_SET_BAUD_RATE ;
 int FTDI_SIO_SET_DATA ;
 int FTDI_SIO_SET_FLOW_CTRL ;
 int USETW (int ,int) ;
 int USETW2 (int ,int ,int) ;
 void* UT_WRITE_VENDOR_DEVICE ;
 int ucom_cfg_do_request (int ,int *,struct usb_device_request*,int *,int ,int) ;
 scalar_t__ uftdi_set_parm_soft (struct ucom_softc*,struct termios*,struct uftdi_param_config*) ;

__attribute__((used)) static void
uftdi_cfg_param(struct ucom_softc *ucom, struct termios *t)
{
 struct uftdi_softc *sc = ucom->sc_parent;
 uint16_t wIndex = ucom->sc_portno;
 struct uftdi_param_config cfg;
 struct usb_device_request req;

 DPRINTF("\n");

 if (uftdi_set_parm_soft(ucom, t, &cfg)) {

  return;
 }
 sc->sc_last_lcr = cfg.lcr;

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = FTDI_SIO_SET_BAUD_RATE;
 USETW(req.wValue, cfg.baud_lobits);
 USETW(req.wIndex, cfg.baud_hibits | wIndex);
 USETW(req.wLength, 0);
 ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
     &req, ((void*)0), 0, 1000);

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = FTDI_SIO_SET_DATA;
 USETW(req.wValue, cfg.lcr);
 USETW(req.wIndex, wIndex);
 USETW(req.wLength, 0);
 ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
     &req, ((void*)0), 0, 1000);

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = FTDI_SIO_SET_FLOW_CTRL;
 USETW2(req.wValue, cfg.v_stop, cfg.v_start);
 USETW2(req.wIndex, cfg.v_flow, wIndex);
 USETW(req.wLength, 0);
 ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
     &req, ((void*)0), 0, 1000);
}
