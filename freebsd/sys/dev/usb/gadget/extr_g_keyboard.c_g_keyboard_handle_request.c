
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct usb_device_request {scalar_t__ bmRequestType; scalar_t__ bRequest; int* wValue; } ;
struct g_keyboard_softc {int sc_led_state; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ UR_SET_IDLE ;
 scalar_t__ UR_SET_PROTOCOL ;
 scalar_t__ UR_SET_REPORT ;
 scalar_t__ UT_WRITE_CLASS_INTERFACE ;
 struct g_keyboard_softc* device_get_softc (int ) ;

__attribute__((used)) static int
g_keyboard_handle_request(device_t dev,
    const void *preq, void **pptr, uint16_t *plen,
    uint16_t offset, uint8_t *pstate)
{
 struct g_keyboard_softc *sc = device_get_softc(dev);
 const struct usb_device_request *req = preq;
 uint8_t is_complete = *pstate;

 if (!is_complete) {
  if ((req->bmRequestType == UT_WRITE_CLASS_INTERFACE) &&
      (req->bRequest == UR_SET_REPORT) &&
      (req->wValue[0] == 0x00) &&
      (req->wValue[1] == 0x02)) {

   if (offset == 0) {
    *plen = sizeof(sc->sc_led_state);
    *pptr = &sc->sc_led_state;
   } else {
    *plen = 0;
   }
   return (0);
  } else if ((req->bmRequestType == UT_WRITE_CLASS_INTERFACE) &&
       (req->bRequest == UR_SET_PROTOCOL) &&
       (req->wValue[0] == 0x00) &&
      (req->wValue[1] == 0x00)) {
   *plen = 0;
   return (0);
  } else if ((req->bmRequestType == UT_WRITE_CLASS_INTERFACE) &&
      (req->bRequest == UR_SET_IDLE)) {
   *plen = 0;
   return (0);
  }
 }
 return (ENXIO);
}
