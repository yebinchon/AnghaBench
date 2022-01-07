
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct uark_softc {int sc_ucom; int sc_udev; } ;


 int DPRINTFN (int ,char*,int ) ;
 int UARK_REQUEST ;
 int UARK_WRITE ;
 int USETW (int ,int ) ;
 scalar_t__ ucom_cfg_do_request (int ,int *,struct usb_device_request*,int *,int ,int) ;
 int usbd_errstr (scalar_t__) ;

__attribute__((used)) static void
uark_cfg_write(struct uark_softc *sc, uint16_t index, uint16_t value)
{
 struct usb_device_request req;
 usb_error_t err;

 req.bmRequestType = UARK_WRITE;
 req.bRequest = UARK_REQUEST;
 USETW(req.wValue, value);
 USETW(req.wIndex, index);
 USETW(req.wLength, 0);

 err = ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
     &req, ((void*)0), 0, 1000);
 if (err) {
  DPRINTFN(0, "device request failed, err=%s "
      "(ignored)\n", usbd_errstr(err));
 }
}
