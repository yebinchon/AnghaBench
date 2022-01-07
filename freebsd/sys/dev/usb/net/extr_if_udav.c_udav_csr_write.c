
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct udav_softc {int sc_ue; } ;


 int UDAV_REQ_REG_WRITE ;
 int USETW (int ,int) ;
 int UT_WRITE_VENDOR_DEVICE ;
 int uether_do_request (int *,struct usb_device_request*,void*,int) ;

__attribute__((used)) static int
udav_csr_write(struct udav_softc *sc, uint16_t offset, void *buf, int len)
{
 struct usb_device_request req;

 offset &= 0xff;
 len &= 0xff;

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = UDAV_REQ_REG_WRITE;
 USETW(req.wValue, 0x0000);
 USETW(req.wIndex, offset);
 USETW(req.wLength, len);

 return (uether_do_request(&sc->sc_ue, &req, buf, 1000));
}
