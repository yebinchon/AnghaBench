
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct atp_softc {int sc_fflags; } ;


 int FREAD ;
 int FWRITE ;
 int atp_disable (struct atp_softc*) ;
 int usb_fifo_free_buffer (struct usb_fifo*) ;
 struct atp_softc* usb_fifo_softc (struct usb_fifo*) ;

__attribute__((used)) static void
atp_close(struct usb_fifo *fifo, int fflags)
{
 struct atp_softc *sc = usb_fifo_softc(fifo);
 if (fflags & FREAD)
  usb_fifo_free_buffer(fifo);

 sc->sc_fflags &= ~(fflags & (FREAD | FWRITE));
 if (sc->sc_fflags == 0) {
  atp_disable(sc);
 }
}
