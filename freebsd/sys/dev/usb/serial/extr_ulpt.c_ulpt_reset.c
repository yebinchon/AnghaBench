
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_request {int bmRequestType; int wLength; int wIndex; int wValue; int bRequest; } ;
struct ulpt_softc {int sc_mtx; int sc_udev; int sc_iface_no; } ;


 int DPRINTFN (int,char*) ;
 int UR_SOFT_RESET ;
 int USB_MS_HZ ;
 int USETW (int ,int ) ;
 int UT_WRITE_CLASS_INTERFACE ;
 int UT_WRITE_CLASS_OTHER ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ usbd_do_request_flags (int ,int *,struct usb_device_request*,int *,int ,int *,int) ;

__attribute__((used)) static void
ulpt_reset(struct ulpt_softc *sc)
{
 struct usb_device_request req;

 DPRINTFN(2, "\n");

 req.bRequest = UR_SOFT_RESET;
 USETW(req.wValue, 0);
 USETW(req.wIndex, sc->sc_iface_no);
 USETW(req.wLength, 0);
 mtx_lock(&sc->sc_mtx);
 req.bmRequestType = UT_WRITE_CLASS_OTHER;
 if (usbd_do_request_flags(sc->sc_udev, &sc->sc_mtx,
     &req, ((void*)0), 0, ((void*)0), 2 * USB_MS_HZ)) {
  req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
  if (usbd_do_request_flags(sc->sc_udev, &sc->sc_mtx,
      &req, ((void*)0), 0, ((void*)0), 2 * USB_MS_HZ)) {

  }
 }
 mtx_unlock(&sc->sc_mtx);
}
