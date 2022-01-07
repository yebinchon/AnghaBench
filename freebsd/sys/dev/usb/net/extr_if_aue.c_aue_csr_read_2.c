
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct aue_softc {int sc_ue; } ;


 int AUE_UR_READREG ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_DEVICE ;
 int le16toh (int) ;
 scalar_t__ uether_do_request (int *,struct usb_device_request*,int*,int) ;

__attribute__((used)) static uint16_t
aue_csr_read_2(struct aue_softc *sc, uint16_t reg)
{
 struct usb_device_request req;
 usb_error_t err;
 uint16_t val;

 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = AUE_UR_READREG;
 USETW(req.wValue, 0);
 USETW(req.wIndex, reg);
 USETW(req.wLength, 2);

 err = uether_do_request(&sc->sc_ue, &req, &val, 1000);
 if (err)
  return (0);
 return (le16toh(val));
}
