
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct umoscom_softc {int sc_ucom; int sc_udev; } ;


 int UMOSCOM_WRITE ;
 int USETW (int ,int ) ;
 int UT_WRITE_VENDOR_DEVICE ;
 int ucom_cfg_do_request (int ,int *,struct usb_device_request*,int *,int ,int) ;

__attribute__((used)) static void
umoscom_cfg_write(struct umoscom_softc *sc, uint16_t reg, uint16_t val)
{
 struct usb_device_request req;

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = UMOSCOM_WRITE;
 USETW(req.wValue, val);
 USETW(req.wIndex, reg);
 USETW(req.wLength, 0);

 ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
     &req, ((void*)0), 0, 1000);
}
