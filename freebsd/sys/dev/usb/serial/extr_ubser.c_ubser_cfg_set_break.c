
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef scalar_t__ uint8_t ;
struct usb_device_request {int wLength; scalar_t__* wIndex; scalar_t__* wValue; int bRequest; int bmRequestType; } ;
struct ucom_softc {scalar_t__ sc_portno; struct ubser_softc* sc_parent; } ;
struct ubser_softc {int sc_udev; scalar_t__ sc_iface_no; } ;


 int DPRINTFN (int ,char*,int ) ;
 int USETW (int ,int ) ;
 int UT_READ_VENDOR_INTERFACE ;
 int VENDOR_SET_BREAK ;
 scalar_t__ ucom_cfg_do_request (int ,struct ucom_softc*,struct usb_device_request*,int *,int ,int) ;
 int usbd_errstr (scalar_t__) ;

__attribute__((used)) static void
ubser_cfg_set_break(struct ucom_softc *ucom, uint8_t onoff)
{
 struct ubser_softc *sc = ucom->sc_parent;
 uint8_t x = ucom->sc_portno;
 struct usb_device_request req;
 usb_error_t err;

 if (onoff) {

  req.bmRequestType = UT_READ_VENDOR_INTERFACE;
  req.bRequest = VENDOR_SET_BREAK;
  req.wValue[0] = x;
  req.wValue[1] = 0;
  req.wIndex[0] = sc->sc_iface_no;
  req.wIndex[1] = 0;
  USETW(req.wLength, 0);

  err = ucom_cfg_do_request(sc->sc_udev, ucom,
      &req, ((void*)0), 0, 1000);
  if (err) {
   DPRINTFN(0, "send break failed, error=%s\n",
       usbd_errstr(err));
  }
 }
}
