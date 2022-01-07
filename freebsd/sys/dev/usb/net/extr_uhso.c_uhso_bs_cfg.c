
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct uhso_softc {int sc_line; int sc_dev; int * sc_ucom; int sc_udev; int sc_iface_no; int sc_type; } ;


 int UCDC_SET_CONTROL_LINE_STATE ;
 int UHSO_IFACE_USB_TYPE (int ) ;
 int UHSO_IF_BULK ;
 int USETW (int ,int ) ;
 int UT_WRITE_CLASS_INTERFACE ;
 int device_printf (int ,char*,int ,int ) ;
 scalar_t__ ucom_cfg_do_request (int ,int *,struct usb_device_request*,int *,int ,int) ;
 int usbd_errstr (scalar_t__) ;

__attribute__((used)) static void
uhso_bs_cfg(struct uhso_softc *sc)
{
 struct usb_device_request req;
 usb_error_t uerr;

 if (!(UHSO_IFACE_USB_TYPE(sc->sc_type) & UHSO_IF_BULK))
  return;

 req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
 req.bRequest = UCDC_SET_CONTROL_LINE_STATE;
 USETW(req.wValue, sc->sc_line);
 USETW(req.wIndex, sc->sc_iface_no);
 USETW(req.wLength, 0);

 uerr = ucom_cfg_do_request(sc->sc_udev, &sc->sc_ucom[0], &req, ((void*)0), 0, 1000);
 if (uerr != 0) {
  device_printf(sc->sc_dev, "failed to set ctrl line state to "
      "0x%02x: %s\n", sc->sc_line, usbd_errstr(uerr));
 }
}
