
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsp_softc {int sc_pollrate; int ** sc_xfer; } ;
struct usb_fifo {int dummy; } ;


 size_t WSP_INTR_DT ;
 struct wsp_softc* usb_fifo_softc (struct usb_fifo*) ;
 int usbd_transfer_start (int *) ;
 int usbd_transfer_stop (int *) ;
 int usbd_xfer_set_interval (int *,int) ;

__attribute__((used)) static void
wsp_start_read(struct usb_fifo *fifo)
{
 struct wsp_softc *sc = usb_fifo_softc(fifo);
 int rate;


 rate = sc->sc_pollrate;

 if (rate > 1000)
  rate = 1000;

 if ((rate > 0) && (sc->sc_xfer[WSP_INTR_DT] != ((void*)0))) {

  usbd_transfer_stop(sc->sc_xfer[WSP_INTR_DT]);

  usbd_xfer_set_interval(sc->sc_xfer[WSP_INTR_DT], 1000 / rate);

  sc->sc_pollrate = 0;
 }
 usbd_transfer_start(sc->sc_xfer[WSP_INTR_DT]);
}
