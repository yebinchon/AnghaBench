
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_xfer {TYPE_1__* xroot; } ;
struct ehci_softc {int dummy; } ;
struct TYPE_2__ {int bus; } ;


 int DPRINTF (char*) ;
 struct ehci_softc* EHCI_BUS2SC (int ) ;
 int ehci_doorbell_async (struct ehci_softc*) ;
 int usb_dma_delay_done_cb ;
 int usbd_transfer_timeout_ms (struct usb_xfer*,void (*) (void*),int) ;

__attribute__((used)) static void
ehci_start_dma_delay_second(struct usb_xfer *xfer)
{
 struct ehci_softc *sc = EHCI_BUS2SC(xfer->xroot->bus);

 DPRINTF("\n");


 ehci_doorbell_async(sc);


 usbd_transfer_timeout_ms(xfer,
     (void (*)(void *))&usb_dma_delay_done_cb, 4);
}
