
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct uhid_softc {scalar_t__ sc_osize; scalar_t__ sc_isize; int sc_mtx; int sc_flags; } ;


 int ENOMEM ;
 int FREAD ;
 int FWRITE ;
 int UHID_FLAG_IMMED ;
 int UHID_FRAME_NUM ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ usb_fifo_alloc_buffer (struct usb_fifo*,scalar_t__,int ) ;
 struct uhid_softc* usb_fifo_softc (struct usb_fifo*) ;

__attribute__((used)) static int
uhid_open(struct usb_fifo *fifo, int fflags)
{
 struct uhid_softc *sc = usb_fifo_softc(fifo);





 if (fflags & FREAD) {

  mtx_lock(&sc->sc_mtx);
  sc->sc_flags &= ~UHID_FLAG_IMMED;
  mtx_unlock(&sc->sc_mtx);

  if (usb_fifo_alloc_buffer(fifo,
      sc->sc_isize + 1, UHID_FRAME_NUM)) {
   return (ENOMEM);
  }
 }
 if (fflags & FWRITE) {
  if (usb_fifo_alloc_buffer(fifo,
      sc->sc_osize + 1, UHID_FRAME_NUM)) {
   return (ENOMEM);
  }
 }
 return (0);
}
