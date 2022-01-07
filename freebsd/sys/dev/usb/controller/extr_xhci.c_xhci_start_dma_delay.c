
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int intr_q; } ;
struct xhci_softc {int * sc_config_msg; TYPE_2__ sc_bus; } ;
struct usb_xfer {TYPE_1__* xroot; } ;
struct TYPE_3__ {int bus; } ;


 int USB_BUS_CONTROL_XFER_PROC (TYPE_2__*) ;
 struct xhci_softc* XHCI_BUS2SC (int ) ;
 int usb_proc_msignal (int ,int *,int *) ;
 int usbd_transfer_enqueue (int *,struct usb_xfer*) ;

__attribute__((used)) static void
xhci_start_dma_delay(struct usb_xfer *xfer)
{
 struct xhci_softc *sc = XHCI_BUS2SC(xfer->xroot->bus);


 usbd_transfer_enqueue(&sc->sc_bus.intr_q, xfer);

 (void)usb_proc_msignal(USB_BUS_CONTROL_XFER_PROC(&sc->sc_bus),
     &sc->sc_config_msg[0], &sc->sc_config_msg[1]);
}
