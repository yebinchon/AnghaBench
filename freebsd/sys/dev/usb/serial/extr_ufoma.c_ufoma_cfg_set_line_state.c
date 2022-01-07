
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_request {int wLength; scalar_t__* wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct ufoma_softc {scalar_t__ sc_currentmode; int sc_ucom; int sc_udev; scalar_t__ sc_ctrl_iface_no; int sc_line; } ;


 int UCDC_SET_CONTROL_LINE_STATE ;
 scalar_t__ UMCPC_ACM_MODE_OBEX ;
 int USETW (int ,int ) ;
 int UT_WRITE_CLASS_INTERFACE ;
 int ucom_cfg_do_request (int ,int *,struct usb_device_request*,int *,int ,int) ;

__attribute__((used)) static void
ufoma_cfg_set_line_state(struct ufoma_softc *sc)
{
 struct usb_device_request req;


 if (sc->sc_currentmode == UMCPC_ACM_MODE_OBEX) {
  return;
 }
 req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
 req.bRequest = UCDC_SET_CONTROL_LINE_STATE;
 USETW(req.wValue, sc->sc_line);
 req.wIndex[0] = sc->sc_ctrl_iface_no;
 req.wIndex[1] = 0;
 USETW(req.wLength, 0);

 ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
     &req, ((void*)0), 0, 1000);
}
