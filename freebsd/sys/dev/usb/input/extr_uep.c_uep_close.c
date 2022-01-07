
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct uep_softc {int state; } ;


 int FREAD ;
 int UEP_ENABLED ;
 int usb_fifo_free_buffer (struct usb_fifo*) ;
 struct uep_softc* usb_fifo_softc (struct usb_fifo*) ;

__attribute__((used)) static void
uep_close(struct usb_fifo *fifo, int fflags)
{
 if (fflags & FREAD) {
  struct uep_softc *sc = usb_fifo_softc(fifo);

  sc->state &= ~(UEP_ENABLED);
  usb_fifo_free_buffer(fifo);
 }
}
