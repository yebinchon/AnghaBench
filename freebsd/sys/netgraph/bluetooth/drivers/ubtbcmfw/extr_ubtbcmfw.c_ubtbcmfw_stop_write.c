
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct ubtbcmfw_softc {int * sc_xfer; } ;


 size_t UBTBCMFW_BULK_DT_WR ;
 struct ubtbcmfw_softc* usb_fifo_softc (struct usb_fifo*) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
ubtbcmfw_stop_write(struct usb_fifo *fifo)
{
 struct ubtbcmfw_softc *sc = usb_fifo_softc(fifo);

 usbd_transfer_stop(sc->sc_xfer[UBTBCMFW_BULK_DT_WR]);
}
