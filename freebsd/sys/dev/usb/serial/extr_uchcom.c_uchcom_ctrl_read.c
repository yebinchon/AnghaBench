
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct uchcom_softc {int sc_ucom; int sc_udev; } ;


 int DPRINTF (char*,int ,int ,int ,int ) ;
 int USB_SHORT_XFER_OK ;
 int USETW (int ,int ) ;
 int UT_READ_VENDOR_DEVICE ;
 int ucom_cfg_do_request (int ,int *,struct usb_device_request*,void*,int ,int) ;

__attribute__((used)) static void
uchcom_ctrl_read(struct uchcom_softc *sc, uint8_t reqno,
    uint16_t value, uint16_t index, void *buf, uint16_t buflen)
{
 struct usb_device_request req;

 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = reqno;
 USETW(req.wValue, value);
 USETW(req.wIndex, index);
 USETW(req.wLength, buflen);

 DPRINTF("RD REQ 0x%02X VAL 0x%04X IDX 0x%04X LEN %d\n",
     reqno, value, index, buflen);
 ucom_cfg_do_request(sc->sc_udev,
     &sc->sc_ucom, &req, buf, USB_SHORT_XFER_OK, 1000);
}
