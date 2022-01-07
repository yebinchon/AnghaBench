
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct uhid_softc {int sc_flags; int ** sc_xfer; } ;


 size_t UHID_CTRL_DT_WR ;
 int UHID_FLAG_IMMED ;
 size_t UHID_INTR_DT_WR ;
 struct uhid_softc* usb_fifo_softc (struct usb_fifo*) ;
 int usbd_transfer_start (int *) ;

__attribute__((used)) static void
uhid_start_write(struct usb_fifo *fifo)
{
 struct uhid_softc *sc = usb_fifo_softc(fifo);

 if ((sc->sc_flags & UHID_FLAG_IMMED) ||
     sc->sc_xfer[UHID_INTR_DT_WR] == ((void*)0)) {
  usbd_transfer_start(sc->sc_xfer[UHID_CTRL_DT_WR]);
 } else {
  usbd_transfer_start(sc->sc_xfer[UHID_INTR_DT_WR]);
 }
}
