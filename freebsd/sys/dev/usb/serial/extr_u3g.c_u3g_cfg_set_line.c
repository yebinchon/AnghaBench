
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_request {int wLength; scalar_t__* wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct ucom_softc {size_t sc_subunit; struct u3g_softc* sc_parent; } ;
struct u3g_softc {int sc_udev; scalar_t__* sc_iface; int * sc_line; } ;


 int UCDC_SET_CONTROL_LINE_STATE ;
 int USETW (int ,int ) ;
 int UT_WRITE_CLASS_INTERFACE ;
 int ucom_cfg_do_request (int ,struct ucom_softc*,struct usb_device_request*,int *,int ,int) ;

__attribute__((used)) static void
u3g_cfg_set_line(struct ucom_softc *ucom)
{
 struct u3g_softc *sc = ucom->sc_parent;
 struct usb_device_request req;

 req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
 req.bRequest = UCDC_SET_CONTROL_LINE_STATE;
 USETW(req.wValue, sc->sc_line[ucom->sc_subunit]);
 req.wIndex[0] = sc->sc_iface[ucom->sc_subunit];
 req.wIndex[1] = 0;
 USETW(req.wLength, 0);

 ucom_cfg_do_request(sc->sc_udev, ucom,
     &req, ((void*)0), 0, 1000);
}
