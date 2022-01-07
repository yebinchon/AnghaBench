
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct ure_softc {int sc_ue; } ;


 int MA_OWNED ;
 scalar_t__ URE_CTL_WRITE ;
 int URE_LOCK_ASSERT (struct ure_softc*,int ) ;
 int UR_SET_ADDRESS ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_DEVICE ;
 int UT_WRITE_VENDOR_DEVICE ;
 int uether_do_request (int *,struct usb_device_request*,void*,int) ;

__attribute__((used)) static int
ure_ctl(struct ure_softc *sc, uint8_t rw, uint16_t val, uint16_t index,
    void *buf, int len)
{
 struct usb_device_request req;

 URE_LOCK_ASSERT(sc, MA_OWNED);

 if (rw == URE_CTL_WRITE)
  req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 else
  req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = UR_SET_ADDRESS;
 USETW(req.wValue, val);
 USETW(req.wIndex, index);
 USETW(req.wLength, len);

 return (uether_do_request(&sc->sc_ue, &req, buf, 1000));
}
