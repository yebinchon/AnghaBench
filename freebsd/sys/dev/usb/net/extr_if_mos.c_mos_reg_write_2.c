
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uWord ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct mos_softc {int sc_ue; } ;


 int MOS_DPRINTFN (char*,int) ;
 int MOS_UR_WRITEREG ;
 int USETW (int ,int) ;
 int UT_WRITE_VENDOR_DEVICE ;
 scalar_t__ uether_do_request (int *,struct usb_device_request*,int *,int) ;

__attribute__((used)) static int
mos_reg_write_2(struct mos_softc *sc, int reg, int aval)
{
 struct usb_device_request req;
 usb_error_t err;
 uWord val;

 USETW(val, aval);

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = MOS_UR_WRITEREG;
 USETW(req.wValue, 0);
 USETW(req.wIndex, reg);
 USETW(req.wLength, 2);

 err = uether_do_request(&sc->sc_ue, &req, &val, 1000);

 if (err) {
  MOS_DPRINTFN("mos_reg_write_2 error, reg: %d", reg);
  return (-1);
 }
 return (0);
}
