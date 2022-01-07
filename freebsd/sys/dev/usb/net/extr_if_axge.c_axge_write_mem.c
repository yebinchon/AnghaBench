
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct axge_softc {int sc_ue; } ;


 int AXGE_LOCK_ASSERT (struct axge_softc*,int ) ;
 int MA_OWNED ;
 int USETW (int ,int) ;
 int UT_WRITE_VENDOR_DEVICE ;
 scalar_t__ uether_do_request (int *,struct usb_device_request*,void*,int) ;

__attribute__((used)) static void
axge_write_mem(struct axge_softc *sc, uint8_t cmd, uint16_t index,
    uint16_t val, void *buf, int len)
{
 struct usb_device_request req;

 AXGE_LOCK_ASSERT(sc, MA_OWNED);

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = cmd;
 USETW(req.wValue, val);
 USETW(req.wIndex, index);
 USETW(req.wLength, len);

 if (uether_do_request(&sc->sc_ue, &req, buf, 1000)) {

 }
}
