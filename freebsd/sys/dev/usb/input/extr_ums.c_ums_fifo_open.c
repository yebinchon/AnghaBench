
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct ums_softc {int sc_fflags; scalar_t__ sc_evflags; } ;


 int DPRINTFN (int,char*) ;
 int EBUSY ;
 int ENOMEM ;
 int FREAD ;
 int FWRITE ;
 int UMS_BUF_SIZE ;
 int UMS_IFQ_MAXLEN ;
 int ums_reset (struct ums_softc*) ;
 scalar_t__ usb_fifo_alloc_buffer (struct usb_fifo*,int ,int ) ;
 struct ums_softc* usb_fifo_softc (struct usb_fifo*) ;

__attribute__((used)) static int
ums_fifo_open(struct usb_fifo *fifo, int fflags)
{
 struct ums_softc *sc = usb_fifo_softc(fifo);

 DPRINTFN(2, "\n");


 if (sc->sc_fflags & fflags)
  return (EBUSY);






 if (sc->sc_fflags == 0)
  ums_reset(sc);


 if (fflags & FREAD) {

  if (usb_fifo_alloc_buffer(fifo,
      UMS_BUF_SIZE, UMS_IFQ_MAXLEN)) {
   return (ENOMEM);
  }
 }

 sc->sc_fflags |= fflags & (FREAD | FWRITE);
 return (0);
}
