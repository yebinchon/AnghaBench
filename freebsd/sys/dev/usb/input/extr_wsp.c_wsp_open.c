
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsp_softc {int sc_state; } ;
struct usb_fifo {int dummy; } ;


 int DPRINTFN (int ,char*) ;
 int EBUSY ;
 int ENOMEM ;
 int FREAD ;
 int WSP_ENABLED ;
 int WSP_FIFO_BUF_SIZE ;
 int WSP_FIFO_QUEUE_MAXLEN ;
 int WSP_LLEVEL_INFO ;
 scalar_t__ usb_fifo_alloc_buffer (struct usb_fifo*,int ,int ) ;
 int usb_fifo_free_buffer (struct usb_fifo*) ;
 struct wsp_softc* usb_fifo_softc (struct usb_fifo*) ;
 int wsp_enable (struct wsp_softc*) ;

__attribute__((used)) static int
wsp_open(struct usb_fifo *fifo, int fflags)
{
 DPRINTFN(WSP_LLEVEL_INFO, "\n");

 if (fflags & FREAD) {
  struct wsp_softc *sc = usb_fifo_softc(fifo);
  int rc;

  if (sc->sc_state & WSP_ENABLED)
   return (EBUSY);

  if (usb_fifo_alloc_buffer(fifo,
      WSP_FIFO_BUF_SIZE, WSP_FIFO_QUEUE_MAXLEN)) {
   return (ENOMEM);
  }
  rc = wsp_enable(sc);
  if (rc != 0) {
   usb_fifo_free_buffer(fifo);
   return (rc);
  }
 }
 return (0);
}
