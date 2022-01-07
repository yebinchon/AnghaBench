
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_request {int wLength; scalar_t__* wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct usb_cdc_line_state {int bDataBits; int bParityType; int bCharFormat; int dwDTERate; } ;
struct ufoma_softc {scalar_t__ sc_currentmode; int sc_ucom; int sc_udev; scalar_t__ sc_ctrl_iface_no; scalar_t__ sc_nobulk; } ;
struct ucom_softc {struct ufoma_softc* sc_parent; } ;
struct termios {int c_cflag; int c_ospeed; } ;
typedef int ls ;






 int CSIZE ;
 int CSTOPB ;
 int DPRINTF (char*) ;
 int PARENB ;
 int PARODD ;
 int UCDC_LINE_STATE_LENGTH ;
 int UCDC_PARITY_EVEN ;
 int UCDC_PARITY_NONE ;
 int UCDC_PARITY_ODD ;
 int UCDC_SET_LINE_CODING ;
 int UCDC_STOP_BIT_1 ;
 int UCDC_STOP_BIT_2 ;
 scalar_t__ UMCPC_ACM_MODE_OBEX ;
 int USETDW (int ,int ) ;
 int USETW (int ,int ) ;
 int UT_WRITE_CLASS_INTERFACE ;
 int memset (struct usb_cdc_line_state*,int ,int) ;
 int ucom_cfg_do_request (int ,int *,struct usb_device_request*,struct usb_cdc_line_state*,int ,int) ;

__attribute__((used)) static void
ufoma_cfg_param(struct ucom_softc *ucom, struct termios *t)
{
 struct ufoma_softc *sc = ucom->sc_parent;
 struct usb_device_request req;
 struct usb_cdc_line_state ls;

 if (sc->sc_nobulk ||
     (sc->sc_currentmode == UMCPC_ACM_MODE_OBEX)) {
  return;
 }
 DPRINTF("\n");

 memset(&ls, 0, sizeof(ls));

 USETDW(ls.dwDTERate, t->c_ospeed);

 if (t->c_cflag & CSTOPB) {
  ls.bCharFormat = UCDC_STOP_BIT_2;
 } else {
  ls.bCharFormat = UCDC_STOP_BIT_1;
 }

 if (t->c_cflag & PARENB) {
  if (t->c_cflag & PARODD) {
   ls.bParityType = UCDC_PARITY_ODD;
  } else {
   ls.bParityType = UCDC_PARITY_EVEN;
  }
 } else {
  ls.bParityType = UCDC_PARITY_NONE;
 }

 switch (t->c_cflag & CSIZE) {
 case 131:
  ls.bDataBits = 5;
  break;
 case 130:
  ls.bDataBits = 6;
  break;
 case 129:
  ls.bDataBits = 7;
  break;
 case 128:
  ls.bDataBits = 8;
  break;
 }

 req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
 req.bRequest = UCDC_SET_LINE_CODING;
 USETW(req.wValue, 0);
 req.wIndex[0] = sc->sc_ctrl_iface_no;
 req.wIndex[1] = 0;
 USETW(req.wLength, UCDC_LINE_STATE_LENGTH);

 ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
     &req, &ls, 0, 1000);
}
