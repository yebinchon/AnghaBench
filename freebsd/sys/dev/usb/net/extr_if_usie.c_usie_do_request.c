
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usie_softc {int sc_mtx; int sc_udev; } ;
struct usb_device_request {int dummy; } ;


 int DPRINTF (char*,int ,int) ;
 int MA_OWNED ;
 int USB_MS_TO_TICKS (int) ;
 int mtx_assert (int *,int ) ;
 int usb_pause_mtx (int *,int ) ;
 int usbd_do_request (int ,int *,struct usb_device_request*,void*) ;
 int usbd_errstr (int) ;

__attribute__((used)) static int
usie_do_request(struct usie_softc *sc, struct usb_device_request *req,
    void *data)
{
 int err = 0;
 int ntries;

 mtx_assert(&sc->sc_mtx, MA_OWNED);

 for (ntries = 0; ntries != 10; ntries++) {
  err = usbd_do_request(sc->sc_udev,
      &sc->sc_mtx, req, data);
  if (err == 0)
   break;

  DPRINTF("Control request failed: %s %d/10\n",
      usbd_errstr(err), ntries);

  usb_pause_mtx(&sc->sc_mtx, USB_MS_TO_TICKS(10));
 }
 return (err);
}
