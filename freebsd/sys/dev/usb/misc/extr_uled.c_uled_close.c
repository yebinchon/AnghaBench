
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct uled_softc {int sc_state; } ;


 int FREAD ;
 int ULED_ENABLED ;
 struct uled_softc* usb_fifo_softc (struct usb_fifo*) ;

__attribute__((used)) static void
uled_close(struct usb_fifo *fifo, int fflags)
{
 if (fflags & FREAD) {
  struct uled_softc *sc;

  sc = usb_fifo_softc(fifo);
  sc->sc_state &= ~ULED_ENABLED;
 }
}
