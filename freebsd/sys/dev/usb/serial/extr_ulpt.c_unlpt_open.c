
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct ulpt_softc {int sc_fflags; struct usb_fifo** sc_fifo_open; int * sc_xfer; int sc_mtx; } ;


 int EBUSY ;
 int ENOMEM ;
 int FREAD ;
 int FWRITE ;
 size_t ULPT_BULK_DT_RD ;
 size_t ULPT_BULK_DT_WR ;
 int ULPT_IFQ_MAXLEN ;
 size_t USB_FIFO_RX ;
 size_t USB_FIFO_TX ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ usb_fifo_alloc_buffer (struct usb_fifo*,int ,int ) ;
 struct ulpt_softc* usb_fifo_softc (struct usb_fifo*) ;
 int usbd_xfer_max_len (int ) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static int
unlpt_open(struct usb_fifo *fifo, int fflags)
{
 struct ulpt_softc *sc = usb_fifo_softc(fifo);

 if (sc->sc_fflags & fflags) {
  return (EBUSY);
 }
 if (fflags & FREAD) {

  mtx_lock(&sc->sc_mtx);
  usbd_xfer_set_stall(sc->sc_xfer[ULPT_BULK_DT_RD]);
  mtx_unlock(&sc->sc_mtx);
  if (usb_fifo_alloc_buffer(fifo,
      usbd_xfer_max_len(sc->sc_xfer[ULPT_BULK_DT_RD]),
      ULPT_IFQ_MAXLEN)) {
   return (ENOMEM);
  }

  sc->sc_fifo_open[USB_FIFO_RX] = fifo;
 }
 if (fflags & FWRITE) {

  mtx_lock(&sc->sc_mtx);
  usbd_xfer_set_stall(sc->sc_xfer[ULPT_BULK_DT_WR]);
  mtx_unlock(&sc->sc_mtx);
  if (usb_fifo_alloc_buffer(fifo,
      usbd_xfer_max_len(sc->sc_xfer[ULPT_BULK_DT_WR]),
      ULPT_IFQ_MAXLEN)) {
   return (ENOMEM);
  }

  sc->sc_fifo_open[USB_FIFO_TX] = fifo;
 }
 sc->sc_fflags |= fflags & (FREAD | FWRITE);
 return (0);
}
