
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; scalar_t__ bRequest; int bmRequestType; } ;
struct cue_softc {int sc_ue; } ;


 scalar_t__ CUE_CMD_READSRAM ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_DEVICE ;
 int UT_WRITE_VENDOR_DEVICE ;
 int uether_do_request (int *,struct usb_device_request*,void*,int) ;

__attribute__((used)) static int
cue_mem(struct cue_softc *sc, uint8_t cmd, uint16_t addr, void *buf, int len)
{
 struct usb_device_request req;

 if (cmd == CUE_CMD_READSRAM)
  req.bmRequestType = UT_READ_VENDOR_DEVICE;
 else
  req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = cmd;
 USETW(req.wValue, 0);
 USETW(req.wIndex, addr);
 USETW(req.wLength, len);

 return (uether_do_request(&sc->sc_ue, &req, buf, 1000));
}
