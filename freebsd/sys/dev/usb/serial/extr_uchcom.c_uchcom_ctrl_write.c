
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct uchcom_softc {int sc_ucom; int sc_udev; } ;


 int DPRINTF (char*,int ,int ,int ) ;
 int USETW (int ,int ) ;
 int UT_WRITE_VENDOR_DEVICE ;
 int ucom_cfg_do_request (int ,int *,struct usb_device_request*,int *,int ,int) ;

__attribute__((used)) static void
uchcom_ctrl_write(struct uchcom_softc *sc, uint8_t reqno,
    uint16_t value, uint16_t index)
{
 struct usb_device_request req;

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = reqno;
 USETW(req.wValue, value);
 USETW(req.wIndex, index);
 USETW(req.wLength, 0);

 DPRINTF("WR REQ 0x%02X VAL 0x%04X IDX 0x%04X\n",
     reqno, value, index);
 ucom_cfg_do_request(sc->sc_udev,
     &sc->sc_ucom, &req, ((void*)0), 0, 1000);
}
