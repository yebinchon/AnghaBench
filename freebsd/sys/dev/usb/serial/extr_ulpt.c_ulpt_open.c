
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct ulpt_softc {scalar_t__ sc_fflags; } ;


 int ulpt_reset (struct ulpt_softc*) ;
 int unlpt_open (struct usb_fifo*,int) ;
 struct ulpt_softc* usb_fifo_softc (struct usb_fifo*) ;

__attribute__((used)) static int
ulpt_open(struct usb_fifo *fifo, int fflags)
{
 struct ulpt_softc *sc = usb_fifo_softc(fifo);



 if (sc->sc_fflags == 0) {



  ulpt_reset(sc);
 }
 return (unlpt_open(fifo, fflags));
}
