
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
struct uvisor_softc {int sc_ucom; int sc_udev; } ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct ucom_softc {struct uvisor_softc* sc_parent; } ;


 int DPRINTFN (int ,char*,int ) ;
 int USETW (int ,int) ;
 int UT_READ_VENDOR_ENDPOINT ;
 int UVISOR_CLOSE_NOTIFICATION ;
 int UVISOR_CONNECTION_INFO_SIZE ;
 scalar_t__ ucom_cfg_do_request (int ,int *,struct usb_device_request*,int *,int ,int) ;
 int usbd_errstr (scalar_t__) ;

__attribute__((used)) static void
uvisor_cfg_close(struct ucom_softc *ucom)
{
 struct uvisor_softc *sc = ucom->sc_parent;
 uint8_t buffer[UVISOR_CONNECTION_INFO_SIZE];
 struct usb_device_request req;
 usb_error_t err;

 req.bmRequestType = UT_READ_VENDOR_ENDPOINT;
 req.bRequest = UVISOR_CLOSE_NOTIFICATION;
 USETW(req.wValue, 0);
 USETW(req.wIndex, 0);
 USETW(req.wLength, UVISOR_CONNECTION_INFO_SIZE);

 err = ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom,
     &req, buffer, 0, 1000);
 if (err) {
  DPRINTFN(0, "close notification failed, error=%s\n",
      usbd_errstr(err));
 }
}
