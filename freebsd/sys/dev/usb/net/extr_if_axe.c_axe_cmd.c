
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct axe_softc {int sc_ue; } ;


 int AXE_CMD_CMD (int) ;
 scalar_t__ AXE_CMD_IS_WRITE (int) ;
 int AXE_CMD_LEN (int) ;
 int AXE_LOCK_ASSERT (struct axe_softc*,int ) ;
 int MA_OWNED ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_DEVICE ;
 int UT_WRITE_VENDOR_DEVICE ;
 int uether_do_request (int *,struct usb_device_request*,void*,int) ;

__attribute__((used)) static int
axe_cmd(struct axe_softc *sc, int cmd, int index, int val, void *buf)
{
 struct usb_device_request req;
 usb_error_t err;

 AXE_LOCK_ASSERT(sc, MA_OWNED);

 req.bmRequestType = (AXE_CMD_IS_WRITE(cmd) ?
     UT_WRITE_VENDOR_DEVICE :
     UT_READ_VENDOR_DEVICE);
 req.bRequest = AXE_CMD_CMD(cmd);
 USETW(req.wValue, val);
 USETW(req.wIndex, index);
 USETW(req.wLength, AXE_CMD_LEN(cmd));

 err = uether_do_request(&sc->sc_ue, &req, buf, 1000);

 return (err);
}
