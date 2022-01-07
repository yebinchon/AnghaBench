
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct uhid_snes_softc {int * sc_transfer; } ;


 size_t UHID_SNES_INTR_DT_RD ;
 struct uhid_snes_softc* usb_fifo_softc (struct usb_fifo*) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
uhid_snes_stop_read(struct usb_fifo *fifo)
{
 struct uhid_snes_softc *sc = usb_fifo_softc(fifo);

 usbd_transfer_stop(sc->sc_transfer[UHID_SNES_INTR_DT_RD]);
}
