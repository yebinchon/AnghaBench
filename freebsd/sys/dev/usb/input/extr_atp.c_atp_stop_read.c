
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct atp_softc {int * sc_xfer; } ;


 size_t ATP_INTR_DT ;
 struct atp_softc* usb_fifo_softc (struct usb_fifo*) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
atp_stop_read(struct usb_fifo *fifo)
{
 struct atp_softc *sc = usb_fifo_softc(fifo);
 usbd_transfer_stop(sc->sc_xfer[ATP_INTR_DT]);
}
