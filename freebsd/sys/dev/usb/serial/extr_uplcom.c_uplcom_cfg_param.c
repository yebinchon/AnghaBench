
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_device_request {scalar_t__* wLength; scalar_t__* wIndex; scalar_t__* wValue; void* bRequest; void* bmRequestType; } ;
struct usb_cdc_line_state {int bDataBits; int bParityType; int bCharFormat; int dwDTERate; } ;
struct uplcom_softc {scalar_t__ sc_chiptype; int sc_ucom; int sc_udev; scalar_t__ sc_data_iface_no; } ;
struct ucom_softc {struct uplcom_softc* sc_parent; } ;
struct termios {int c_ospeed; int c_cflag; } ;
typedef int ls ;


 int CRTSCTS ;




 int CSIZE ;
 int CSTOPB ;
 int DPRINTF (char*,...) ;
 int PARENB ;
 int PARODD ;
 scalar_t__ TYPE_PL2303 ;
 int UCDC_LINE_STATE_LENGTH ;
 int UCDC_PARITY_EVEN ;
 int UCDC_PARITY_NONE ;
 int UCDC_PARITY_ODD ;
 void* UCDC_SET_LINE_CODING ;
 int UCDC_STOP_BIT_1 ;
 int UCDC_STOP_BIT_1_5 ;
 int UCDC_STOP_BIT_2 ;
 int UGETDW (int ) ;
 int UPLCOM_SET_CRTSCTS ;
 int UPLCOM_SET_CRTSCTS_PL2303X ;
 void* UPLCOM_SET_REQUEST ;
 int USETDW (int ,int) ;
 int USETW (scalar_t__*,int ) ;
 void* UT_WRITE_CLASS_INTERFACE ;
 void* UT_WRITE_VENDOR_DEVICE ;
 int memset (struct usb_cdc_line_state*,int ,int) ;
 int ucom_cfg_do_request (int ,int *,struct usb_device_request*,struct usb_cdc_line_state*,int ,int) ;
 scalar_t__ uplcom_baud_supported (int) ;
 int uplcom_encode_baud_rate_divisor (int *,int) ;

__attribute__((used)) static void
uplcom_cfg_param(struct ucom_softc *ucom, struct termios *t)
{
 struct uplcom_softc *sc = ucom->sc_parent;
 struct usb_cdc_line_state ls;
 struct usb_device_request req;

 DPRINTF("sc = %p\n", sc);

 memset(&ls, 0, sizeof(ls));




 if ((t->c_ospeed & 0x80000000) || uplcom_baud_supported(t->c_ospeed))
  USETDW(ls.dwDTERate, t->c_ospeed);
 else
  t->c_ospeed = uplcom_encode_baud_rate_divisor((uint8_t*)&ls.dwDTERate, t->c_ospeed);

 if (t->c_cflag & CSTOPB) {
  if ((t->c_cflag & CSIZE) == 131) {




   ls.bCharFormat = UCDC_STOP_BIT_1_5;
  } else {
   ls.bCharFormat = UCDC_STOP_BIT_2;
  }
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

 DPRINTF("rate=0x%08x fmt=%d parity=%d bits=%d\n",
     UGETDW(ls.dwDTERate), ls.bCharFormat,
     ls.bParityType, ls.bDataBits);

 req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
 req.bRequest = UCDC_SET_LINE_CODING;
 USETW(req.wValue, 0);
 req.wIndex[0] = sc->sc_data_iface_no;
 req.wIndex[1] = 0;
 USETW(req.wLength, UCDC_LINE_STATE_LENGTH);

 ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
     &req, &ls, 0, 1000);

 if (t->c_cflag & CRTSCTS) {

  DPRINTF("crtscts = on\n");

  req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
  req.bRequest = UPLCOM_SET_REQUEST;
  USETW(req.wValue, 0);
  if (sc->sc_chiptype != TYPE_PL2303)
   USETW(req.wIndex, UPLCOM_SET_CRTSCTS_PL2303X);
  else
   USETW(req.wIndex, UPLCOM_SET_CRTSCTS);
  USETW(req.wLength, 0);

  ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
      &req, ((void*)0), 0, 1000);
 } else {
  req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
  req.bRequest = UPLCOM_SET_REQUEST;
  USETW(req.wValue, 0);
  USETW(req.wIndex, 0);
  USETW(req.wLength, 0);
  ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
      &req, ((void*)0), 0, 1000);
 }
}
