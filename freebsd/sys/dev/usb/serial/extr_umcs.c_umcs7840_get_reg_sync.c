
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


 int MCS7840_RDREQ ;
 int UMCS7840_CTRL_TIMEOUT ;
 int UMCS7840_READ_LENGTH ;
 scalar_t__ USB_ERR_INVAL ;
 scalar_t__ USB_ERR_NORMAL_COMPLETION ;
 int USETW (int ,int ) ;
 int UT_READ_VENDOR_DEVICE ;
 int device_printf (int ,char*,int ,int) ;
 scalar_t__ usbd_do_request_proc (int ,int *,struct usb_device_request*,void*,int ,int*,int ) ;
 int usbd_errstr (scalar_t__) ;

__attribute__((used)) static usb_error_t
umcs7840_get_reg_sync(struct umcs7840_softc *sc, uint8_t reg, uint8_t *data)
{
 struct usb_device_request req;
 usb_error_t err;
 uint16_t len;

 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = MCS7840_RDREQ;
 USETW(req.wValue, 0);
 USETW(req.wIndex, reg);
 USETW(req.wLength, UMCS7840_READ_LENGTH);

 err = usbd_do_request_proc(sc->sc_udev, &sc->sc_super_ucom.sc_tq, &req, (void *)data, 0, &len, UMCS7840_CTRL_TIMEOUT);
 if (err == USB_ERR_NORMAL_COMPLETION && len != 1) {
  device_printf(sc->sc_dev, "Reading register %d failed: invalid length %d\n", reg, len);
  return (USB_ERR_INVAL);
 } else if (err)
  device_printf(sc->sc_dev, "Reading register %d failed: %s\n", reg, usbd_errstr(err));
 return (err);
}
