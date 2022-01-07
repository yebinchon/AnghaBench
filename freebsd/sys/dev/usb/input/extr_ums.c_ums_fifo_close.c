
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct ums_softc {int sc_fflags; } ;


 int DPRINTFN (int,char*) ;
 int FREAD ;
 int FWRITE ;
 int usb_fifo_free_buffer (struct usb_fifo*) ;
 struct ums_softc* usb_fifo_softc (struct usb_fifo*) ;

__attribute__((used)) static void
ums_fifo_close(struct usb_fifo *fifo, int fflags)
{
 struct ums_softc *sc = usb_fifo_softc(fifo);

 DPRINTFN(2, "\n");

 if (fflags & FREAD)
  usb_fifo_free_buffer(fifo);

 sc->sc_fflags &= ~(fflags & (FREAD | FWRITE));
}
