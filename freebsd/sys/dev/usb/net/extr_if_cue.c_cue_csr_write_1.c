
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct cue_softc {int sc_ue; } ;


 int CUE_CMD_WRITEREG ;
 int USETW (int ,int ) ;
 int UT_WRITE_VENDOR_DEVICE ;
 int uether_do_request (int *,struct usb_device_request*,int *,int) ;

__attribute__((used)) static int
cue_csr_write_1(struct cue_softc *sc, uint16_t reg, uint16_t val)
{
 struct usb_device_request req;

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = CUE_CMD_WRITEREG;
 USETW(req.wValue, val);
 USETW(req.wIndex, reg);
 USETW(req.wLength, 0);

 return (uether_do_request(&sc->sc_ue, &req, ((void*)0), 1000));
}
