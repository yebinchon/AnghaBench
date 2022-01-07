
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct uep_softc {int * xfer; } ;


 size_t UEP_INTR_DT ;
 struct uep_softc* usb_fifo_softc (struct usb_fifo*) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
uep_stop_read(struct usb_fifo *fifo)
{
 struct uep_softc *sc = usb_fifo_softc(fifo);

 usbd_transfer_stop(sc->xfer[UEP_INTR_DT]);
}
