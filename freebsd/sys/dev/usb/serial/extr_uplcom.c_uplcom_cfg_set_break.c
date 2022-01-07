
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; scalar_t__* wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct uplcom_softc {int sc_ucom; int sc_udev; scalar_t__ sc_data_iface_no; } ;
struct ucom_softc {struct uplcom_softc* sc_parent; } ;


 int DPRINTF (char*,scalar_t__) ;
 int UCDC_BREAK_OFF ;
 int UCDC_BREAK_ON ;
 int UCDC_SEND_BREAK ;
 int USETW (int ,int ) ;
 int UT_WRITE_CLASS_INTERFACE ;
 int ucom_cfg_do_request (int ,int *,struct usb_device_request*,int *,int ,int) ;

__attribute__((used)) static void
uplcom_cfg_set_break(struct ucom_softc *ucom, uint8_t onoff)
{
 struct uplcom_softc *sc = ucom->sc_parent;
 struct usb_device_request req;
 uint16_t temp;

 DPRINTF("onoff = %d\n", onoff);

 temp = (onoff ? UCDC_BREAK_ON : UCDC_BREAK_OFF);

 req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
 req.bRequest = UCDC_SEND_BREAK;
 USETW(req.wValue, temp);
 req.wIndex[0] = sc->sc_data_iface_no;
 req.wIndex[1] = 0;
 USETW(req.wLength, 0);

 ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
     &req, ((void*)0), 0, 1000);
}
