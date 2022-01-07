
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct cue_softc {int sc_ue; } ;


 int CUE_CMD_RESET ;
 int USETW (int ,int ) ;
 int UT_WRITE_VENDOR_DEVICE ;
 int hz ;
 scalar_t__ uether_do_request (int *,struct usb_device_request*,int *,int) ;
 int uether_pause (int *,int) ;

__attribute__((used)) static void
cue_reset(struct cue_softc *sc)
{
 struct usb_device_request req;

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = CUE_CMD_RESET;
 USETW(req.wValue, 0);
 USETW(req.wIndex, 0);
 USETW(req.wLength, 0);

 if (uether_do_request(&sc->sc_ue, &req, ((void*)0), 1000)) {

 }




 uether_pause(&sc->sc_ue, hz / 100);
}
