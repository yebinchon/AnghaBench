
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct umoscom_softc {int sc_ucom; int sc_udev; } ;


 int DPRINTF (char*,int,int ) ;
 int UMOSCOM_READ ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_DEVICE ;
 int ucom_cfg_do_request (int ,int *,struct usb_device_request*,int *,int ,int) ;

__attribute__((used)) static uint8_t
umoscom_cfg_read(struct umoscom_softc *sc, uint16_t reg)
{
 struct usb_device_request req;
 uint8_t val;

 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = UMOSCOM_READ;
 USETW(req.wValue, 0);
 USETW(req.wIndex, reg);
 USETW(req.wLength, 1);

 ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
     &req, &val, 0, 1000);

 DPRINTF("reg=0x%04x, val=0x%02x\n", reg, val);

 return (val);
}
