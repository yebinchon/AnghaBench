
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct usb_fifo {int dummy; } ;
struct uep_softc {int pollrate; int ** xfer; } ;


 size_t UEP_INTR_DT ;
 struct uep_softc* usb_fifo_softc (struct usb_fifo*) ;
 int usbd_transfer_start (int *) ;
 int usbd_transfer_stop (int *) ;
 int usbd_xfer_set_interval (int *,int) ;

__attribute__((used)) static void
uep_start_read(struct usb_fifo *fifo)
{
 struct uep_softc *sc = usb_fifo_softc(fifo);
 u_int rate;

 if ((rate = sc->pollrate) > 1000)
  rate = 1000;

 if (rate > 0 && sc->xfer[UEP_INTR_DT] != ((void*)0)) {
  usbd_transfer_stop(sc->xfer[UEP_INTR_DT]);
  usbd_xfer_set_interval(sc->xfer[UEP_INTR_DT], 1000 / rate);
  sc->pollrate = 0;
 }

 usbd_transfer_start(sc->xfer[UEP_INTR_DT]);
}
