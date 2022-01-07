
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct udav_softc {int sc_ue; } ;


 int UDAV_REQ_REG_WRITE1 ;
 int USETW (int ,int) ;
 int UT_WRITE_VENDOR_DEVICE ;
 int uether_do_request (int *,struct usb_device_request*,int *,int) ;

__attribute__((used)) static int
udav_csr_write1(struct udav_softc *sc, uint16_t offset,
    uint8_t ch)
{
 struct usb_device_request req;

 offset &= 0xff;

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = UDAV_REQ_REG_WRITE1;
 USETW(req.wValue, ch);
 USETW(req.wIndex, offset);
 USETW(req.wLength, 0x0000);

 return (uether_do_request(&sc->sc_ue, &req, ((void*)0), 1000));
}
