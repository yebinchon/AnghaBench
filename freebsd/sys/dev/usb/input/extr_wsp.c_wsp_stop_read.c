
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsp_softc {int * sc_xfer; } ;
struct usb_fifo {int dummy; } ;


 size_t WSP_INTR_DT ;
 struct wsp_softc* usb_fifo_softc (struct usb_fifo*) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
wsp_stop_read(struct usb_fifo *fifo)
{
 struct wsp_softc *sc = usb_fifo_softc(fifo);

 usbd_transfer_stop(sc->sc_xfer[WSP_INTR_DT]);
}
