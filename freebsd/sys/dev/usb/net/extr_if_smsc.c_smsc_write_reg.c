
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint32_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct smsc_softc {int sc_ue; } ;


 int MA_OWNED ;
 int SMSC_LOCK_ASSERT (struct smsc_softc*,int ) ;
 int SMSC_UR_WRITE_REG ;
 int USETW (int ,int) ;
 int UT_WRITE_VENDOR_DEVICE ;
 int htole32 (int) ;
 int smsc_warn_printf (struct smsc_softc*,char*,int) ;
 scalar_t__ uether_do_request (int *,struct usb_device_request*,int*,int) ;

__attribute__((used)) static int
smsc_write_reg(struct smsc_softc *sc, uint32_t off, uint32_t data)
{
 struct usb_device_request req;
 uint32_t buf;
 usb_error_t err;

 SMSC_LOCK_ASSERT(sc, MA_OWNED);

 buf = htole32(data);

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = SMSC_UR_WRITE_REG;
 USETW(req.wValue, 0);
 USETW(req.wIndex, off);
 USETW(req.wLength, 4);

 err = uether_do_request(&sc->sc_ue, &req, &buf, 1000);
 if (err != 0)
  smsc_warn_printf(sc, "Failed to write register 0x%0x\n", off);

 return (err);
}
