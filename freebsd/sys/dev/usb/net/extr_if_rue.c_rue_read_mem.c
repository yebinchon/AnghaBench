
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct rue_softc {int sc_ue; } ;


 int UR_SET_ADDRESS ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_DEVICE ;
 int uether_do_request (int *,struct usb_device_request*,void*,int) ;

__attribute__((used)) static int
rue_read_mem(struct rue_softc *sc, uint16_t addr, void *buf, int len)
{
 struct usb_device_request req;

 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = UR_SET_ADDRESS;
 USETW(req.wValue, addr);
 USETW(req.wIndex, 0);
 USETW(req.wLength, len);

 return (uether_do_request(&sc->sc_ue, &req, buf, 1000));
}
