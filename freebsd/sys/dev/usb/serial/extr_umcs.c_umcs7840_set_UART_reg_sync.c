
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct TYPE_2__ {int sc_tq; } ;
struct umcs7840_softc {int sc_dev; TYPE_1__ sc_super_ucom; int sc_udev; } ;


 int MCS7840_WRREQ ;
 int UMCS7840_CTRL_TIMEOUT ;
 int USETW (int ,int) ;
 int UT_WRITE_VENDOR_DEVICE ;
 int device_printf (int ,char*,int,int,int ) ;
 scalar_t__ usbd_do_request_proc (int ,int *,struct usb_device_request*,int *,int ,int *,int ) ;
 int usbd_errstr (scalar_t__) ;

__attribute__((used)) static usb_error_t
umcs7840_set_UART_reg_sync(struct umcs7840_softc *sc, uint8_t portno, uint8_t reg, uint8_t data)
{
 struct usb_device_request req;
 usb_error_t err;
 uint16_t wVal;


 wVal = ((uint16_t)(portno + 1)) << 8 | data;

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = MCS7840_WRREQ;
 USETW(req.wValue, wVal);
 USETW(req.wIndex, reg);
 USETW(req.wLength, 0);

 err = usbd_do_request_proc(sc->sc_udev, &sc->sc_super_ucom.sc_tq, &req, ((void*)0), 0, ((void*)0), UMCS7840_CTRL_TIMEOUT);
 if (err)
  device_printf(sc->sc_dev, "Writing UART%d register %d failed: %s\n", portno, reg, usbd_errstr(err));
 return (err);
}
