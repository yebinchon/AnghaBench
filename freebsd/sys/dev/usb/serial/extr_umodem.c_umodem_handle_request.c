
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct usb_device_request {scalar_t__ bmRequestType; scalar_t__ bRequest; int* wIndex; int* wValue; } ;
struct umodem_softc {int sc_ctrl_iface_no; int sc_abstract_state; int sc_line_coding; } ;
typedef int device_t ;


 int DPRINTF (char*,struct umodem_softc*) ;
 int ENXIO ;
 scalar_t__ UCDC_SEND_BREAK ;
 scalar_t__ UCDC_SET_COMM_FEATURE ;
 scalar_t__ UCDC_SET_CONTROL_LINE_STATE ;
 scalar_t__ UCDC_SET_LINE_CODING ;
 scalar_t__ UT_WRITE_CLASS_INTERFACE ;
 struct umodem_softc* device_get_softc (int ) ;

__attribute__((used)) static int
umodem_handle_request(device_t dev,
    const void *preq, void **pptr, uint16_t *plen,
    uint16_t offset, uint8_t *pstate)
{
 struct umodem_softc *sc = device_get_softc(dev);
 const struct usb_device_request *req = preq;
 uint8_t is_complete = *pstate;

 DPRINTF("sc=%p\n", sc);

 if (!is_complete) {
  if ((req->bmRequestType == UT_WRITE_CLASS_INTERFACE) &&
      (req->bRequest == UCDC_SET_LINE_CODING) &&
      (req->wIndex[0] == sc->sc_ctrl_iface_no) &&
      (req->wIndex[1] == 0x00) &&
      (req->wValue[0] == 0x00) &&
      (req->wValue[1] == 0x00)) {
   if (offset == 0) {
    *plen = sizeof(sc->sc_line_coding);
    *pptr = &sc->sc_line_coding;
   } else {
    *plen = 0;
   }
   return (0);
  } else if ((req->bmRequestType == UT_WRITE_CLASS_INTERFACE) &&
      (req->wIndex[0] == sc->sc_ctrl_iface_no) &&
      (req->wIndex[1] == 0x00) &&
      (req->bRequest == UCDC_SET_COMM_FEATURE)) {
   if (offset == 0) {
    *plen = sizeof(sc->sc_abstract_state);
    *pptr = &sc->sc_abstract_state;
   } else {
    *plen = 0;
   }
   return (0);
  } else if ((req->bmRequestType == UT_WRITE_CLASS_INTERFACE) &&
      (req->wIndex[0] == sc->sc_ctrl_iface_no) &&
      (req->wIndex[1] == 0x00) &&
      (req->bRequest == UCDC_SET_CONTROL_LINE_STATE)) {
   *plen = 0;
   return (0);
  } else if ((req->bmRequestType == UT_WRITE_CLASS_INTERFACE) &&
      (req->wIndex[0] == sc->sc_ctrl_iface_no) &&
      (req->wIndex[1] == 0x00) &&
      (req->bRequest == UCDC_SEND_BREAK)) {
   *plen = 0;
   return (0);
  }
 }
 return (ENXIO);
}
