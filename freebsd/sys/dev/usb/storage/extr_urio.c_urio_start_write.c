
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct urio_softc {int * sc_xfer; } ;


 size_t URIO_T_WR ;
 struct urio_softc* usb_fifo_softc (struct usb_fifo*) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
urio_start_write(struct usb_fifo *fifo)
{
 struct urio_softc *sc = usb_fifo_softc(fifo);

 usbd_transfer_start(sc->sc_xfer[URIO_T_WR]);
}
