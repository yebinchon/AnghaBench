
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct atp_softc {int sc_fflags; } ;


 int ATP_FIFO_BUF_SIZE ;
 int ATP_FIFO_QUEUE_MAXLEN ;
 int EBUSY ;
 int ENOMEM ;
 int FREAD ;
 int FWRITE ;
 int atp_enable (struct atp_softc*) ;
 scalar_t__ usb_fifo_alloc_buffer (struct usb_fifo*,int ,int ) ;
 struct atp_softc* usb_fifo_softc (struct usb_fifo*) ;

__attribute__((used)) static int
atp_open(struct usb_fifo *fifo, int fflags)
{
 struct atp_softc *sc = usb_fifo_softc(fifo);


 if (sc->sc_fflags & fflags)
  return (EBUSY);


 if (sc->sc_fflags == 0) {
  int rc;
  if ((rc = atp_enable(sc)) != 0)
   return (rc);
 }

 if (fflags & FREAD) {
  if (usb_fifo_alloc_buffer(fifo,
      ATP_FIFO_BUF_SIZE, ATP_FIFO_QUEUE_MAXLEN)) {
   return (ENOMEM);
  }
 }

 sc->sc_fflags |= (fflags & (FREAD | FWRITE));
 return (0);
}
