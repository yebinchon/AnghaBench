
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct ulpt_softc {int * sc_xfer; } ;


 size_t ULPT_BULK_DT_WR ;
 struct ulpt_softc* usb_fifo_softc (struct usb_fifo*) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
ulpt_start_write(struct usb_fifo *fifo)
{
 struct ulpt_softc *sc = usb_fifo_softc(fifo);

 usbd_transfer_start(sc->sc_xfer[ULPT_BULK_DT_WR]);
}
