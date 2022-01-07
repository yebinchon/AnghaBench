
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; } ;
struct uhid_snes_softc {int sc_mutex; int sc_usb_device; int sc_iface_num; } ;


 int UREQ_SOFT_RESET ;
 int USB_MS_HZ ;
 int USETW (int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usbd_do_request_flags (int ,int *,struct usb_device_request*,int *,int ,int *,int) ;

__attribute__((used)) static void
uhid_snes_reset(struct uhid_snes_softc *sc)
{
 struct usb_device_request req;
 int error;

 req.bRequest = UREQ_SOFT_RESET;
 USETW(req.wValue, 0);
 USETW(req.wIndex, sc->sc_iface_num);
 USETW(req.wLength, 0);

 mtx_lock(&sc->sc_mutex);

 error = usbd_do_request_flags(sc->sc_usb_device, &sc->sc_mutex,
     &req, ((void*)0), 0, ((void*)0), 2 * USB_MS_HZ);

 if (error) {
  usbd_do_request_flags(sc->sc_usb_device, &sc->sc_mutex,
      &req, ((void*)0), 0, ((void*)0), 2 * USB_MS_HZ);
 }

 mtx_unlock(&sc->sc_mutex);
}
