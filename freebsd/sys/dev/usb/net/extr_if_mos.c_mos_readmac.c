
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int u_char ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct mos_softc {int sc_ue; } ;


 int ETHER_ADDR_LEN ;
 int MOS_MAC ;
 int MOS_UR_READREG ;
 int USETW (int ,int ) ;
 int UT_READ_VENDOR_DEVICE ;
 scalar_t__ uether_do_request (int *,struct usb_device_request*,int *,int) ;

__attribute__((used)) static int
mos_readmac(struct mos_softc *sc, u_char *mac)
{
 struct usb_device_request req;
 usb_error_t err;

 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = MOS_UR_READREG;
 USETW(req.wValue, 0);
 USETW(req.wIndex, MOS_MAC);
 USETW(req.wLength, ETHER_ADDR_LEN);

 err = uether_do_request(&sc->sc_ue, &req, mac, 1000);

 if (err) {
  return (-1);
 }
 return (0);
}
