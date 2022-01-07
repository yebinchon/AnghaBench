
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct uvscom_softc {int sc_ucom; int sc_udev; } ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;


 int DPRINTFN (int ,char*,int ) ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_DEVICE ;
 int UVSCOM_READ_STATUS ;
 scalar_t__ ucom_cfg_do_request (int ,int *,struct usb_device_request*,int*,int ,int) ;
 int usbd_errstr (scalar_t__) ;

__attribute__((used)) static uint16_t
uvscom_cfg_read_status(struct uvscom_softc *sc)
{
 struct usb_device_request req;
 usb_error_t err;
 uint8_t data[2];

 req.bmRequestType = UT_READ_VENDOR_DEVICE;
 req.bRequest = UVSCOM_READ_STATUS;
 USETW(req.wValue, 0);
 USETW(req.wIndex, 0);
 USETW(req.wLength, 2);

 err = ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
     &req, data, 0, 1000);
 if (err) {
  DPRINTFN(0, "device request failed, err=%s "
      "(ignored)\n", usbd_errstr(err));
 }
 return (data[0] | (data[1] << 8));
}
