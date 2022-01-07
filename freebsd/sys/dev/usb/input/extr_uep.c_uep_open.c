
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct uep_softc {int state; } ;


 int EBUSY ;
 int ENOMEM ;
 int FREAD ;
 int UEP_ENABLED ;
 int UEP_FIFO_BUF_SIZE ;
 int UEP_FIFO_QUEUE_MAXLEN ;
 scalar_t__ usb_fifo_alloc_buffer (struct usb_fifo*,int ,int ) ;
 struct uep_softc* usb_fifo_softc (struct usb_fifo*) ;

__attribute__((used)) static int
uep_open(struct usb_fifo *fifo, int fflags)
{
 if (fflags & FREAD) {
  struct uep_softc *sc = usb_fifo_softc(fifo);

  if (sc->state & UEP_ENABLED)
   return (EBUSY);
  if (usb_fifo_alloc_buffer(fifo, UEP_FIFO_BUF_SIZE,
      UEP_FIFO_QUEUE_MAXLEN))
   return (ENOMEM);

  sc->state |= UEP_ENABLED;
 }

 return (0);
}
