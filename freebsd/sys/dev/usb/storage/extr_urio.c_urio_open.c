
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct urio_softc {int * sc_xfer; int sc_flags; int sc_mtx; } ;


 int ENOMEM ;
 int FREAD ;
 int FWRITE ;
 int URIO_FLAG_READ_STALL ;
 int URIO_FLAG_WRITE_STALL ;
 int URIO_IFQ_MAXLEN ;
 size_t URIO_T_RD ;
 size_t URIO_T_WR ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ usb_fifo_alloc_buffer (struct usb_fifo*,int ,int ) ;
 struct urio_softc* usb_fifo_softc (struct usb_fifo*) ;
 int usbd_xfer_max_len (int ) ;

__attribute__((used)) static int
urio_open(struct usb_fifo *fifo, int fflags)
{
 struct urio_softc *sc = usb_fifo_softc(fifo);

 if (fflags & FREAD) {

  mtx_lock(&sc->sc_mtx);
  sc->sc_flags |= URIO_FLAG_READ_STALL;
  mtx_unlock(&sc->sc_mtx);

  if (usb_fifo_alloc_buffer(fifo,
      usbd_xfer_max_len(sc->sc_xfer[URIO_T_RD]),
      URIO_IFQ_MAXLEN)) {
   return (ENOMEM);
  }
 }
 if (fflags & FWRITE) {

  sc->sc_flags |= URIO_FLAG_WRITE_STALL;

  if (usb_fifo_alloc_buffer(fifo,
      usbd_xfer_max_len(sc->sc_xfer[URIO_T_WR]),
      URIO_IFQ_MAXLEN)) {
   return (ENOMEM);
  }
 }
 return (0);
}
