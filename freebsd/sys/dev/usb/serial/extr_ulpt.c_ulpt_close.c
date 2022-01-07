
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct ulpt_softc {int sc_fflags; } ;


 int FREAD ;
 int FWRITE ;
 int usb_fifo_free_buffer (struct usb_fifo*) ;
 struct ulpt_softc* usb_fifo_softc (struct usb_fifo*) ;

__attribute__((used)) static void
ulpt_close(struct usb_fifo *fifo, int fflags)
{
 struct ulpt_softc *sc = usb_fifo_softc(fifo);

 sc->sc_fflags &= ~(fflags & (FREAD | FWRITE));

 if (fflags & (FREAD | FWRITE)) {
  usb_fifo_free_buffer(fifo);
 }
}
