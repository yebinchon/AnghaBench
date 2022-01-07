
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct usb_device_request {int wLength; scalar_t__* wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct ubsa_softc {int sc_ucom; int sc_udev; scalar_t__ sc_iface_no; } ;


 int DPRINTFN (int ,char*,int ) ;
 int USETW (int ,int ) ;
 int UT_WRITE_VENDOR_DEVICE ;
 scalar_t__ ucom_cfg_do_request (int ,int *,struct usb_device_request*,int *,int ,int) ;
 int usbd_errstr (scalar_t__) ;

__attribute__((used)) static void
ubsa_cfg_request(struct ubsa_softc *sc, uint8_t index, uint16_t value)
{
 struct usb_device_request req;
 usb_error_t err;

 req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
 req.bRequest = index;
 USETW(req.wValue, value);
 req.wIndex[0] = sc->sc_iface_no;
 req.wIndex[1] = 0;
 USETW(req.wLength, 0);

 err = ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
     &req, ((void*)0), 0, 1000);
 if (err) {
  DPRINTFN(0, "device request failed, err=%s "
      "(ignored)\n", usbd_errstr(err));
 }
}
