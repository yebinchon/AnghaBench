
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct cue_softc {int sc_ue; } ;


 int CUE_CMD_GET_MACADDR ;
 int ETHER_ADDR_LEN ;
 int USETW (int ,int ) ;
 int UT_READ_VENDOR_DEVICE ;
 int uether_do_request (int *,struct usb_device_request*,void*,int) ;

__attribute__((used)) static int
cue_getmac(struct cue_softc *sc, void *buf)
{
 struct usb_device_request req;

 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = CUE_CMD_GET_MACADDR;
 USETW(req.wValue, 0);
 USETW(req.wIndex, 0);
 USETW(req.wLength, ETHER_ADDR_LEN);

 return (uether_do_request(&sc->sc_ue, &req, buf, 1000));
}
