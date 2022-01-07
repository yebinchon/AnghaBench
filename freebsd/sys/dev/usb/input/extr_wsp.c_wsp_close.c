
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsp_softc {int dummy; } ;
struct usb_fifo {int dummy; } ;


 int FREAD ;
 int usb_fifo_free_buffer (struct usb_fifo*) ;
 struct wsp_softc* usb_fifo_softc (struct usb_fifo*) ;
 int wsp_disable (struct wsp_softc*) ;

__attribute__((used)) static void
wsp_close(struct usb_fifo *fifo, int fflags)
{
 if (fflags & FREAD) {
  struct wsp_softc *sc = usb_fifo_softc(fifo);

  wsp_disable(sc);
  usb_fifo_free_buffer(fifo);
 }
}
