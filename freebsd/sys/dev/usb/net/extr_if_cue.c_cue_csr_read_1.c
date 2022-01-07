
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct cue_softc {int sc_ue; } ;


 int CUE_CMD_READREG ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_DEVICE ;
 scalar_t__ uether_do_request (int *,struct usb_device_request*,int *,int) ;

__attribute__((used)) static uint8_t
cue_csr_read_1(struct cue_softc *sc, uint16_t reg)
{
 struct usb_device_request req;
 uint8_t val;

 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = CUE_CMD_READREG;
 USETW(req.wValue, 0);
 USETW(req.wIndex, reg);
 USETW(req.wLength, 1);

 if (uether_do_request(&sc->sc_ue, &req, &val, 1000)) {

 }
 return (val);
}
