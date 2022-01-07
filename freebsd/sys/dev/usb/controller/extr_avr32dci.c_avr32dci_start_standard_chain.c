
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_xfer {int endpointno; scalar_t__ timeout; TYPE_1__* xroot; } ;
struct avr32dci_softc {int dummy; } ;
struct TYPE_4__ {int intr_q; } ;
struct TYPE_3__ {TYPE_2__* bus; } ;


 struct avr32dci_softc* AVR32_BUS2SC (TYPE_2__*) ;
 int AVR32_INT_EPT_INT (int) ;
 int DPRINTFN (int,char*) ;
 int UE_ADDR ;
 int avr32dci_mod_ien (struct avr32dci_softc*,int ,int ) ;
 int avr32dci_timeout ;
 scalar_t__ avr32dci_xfer_do_fifo (struct usb_xfer*) ;
 int usbd_transfer_enqueue (int *,struct usb_xfer*) ;
 int usbd_transfer_timeout_ms (struct usb_xfer*,int *,scalar_t__) ;

__attribute__((used)) static void
avr32dci_start_standard_chain(struct usb_xfer *xfer)
{
 DPRINTFN(9, "\n");


 if (avr32dci_xfer_do_fifo(xfer)) {
  uint8_t ep_no = xfer->endpointno & UE_ADDR;
  struct avr32dci_softc *sc = AVR32_BUS2SC(xfer->xroot->bus);

  avr32dci_mod_ien(sc, AVR32_INT_EPT_INT(ep_no), 0);


  usbd_transfer_enqueue(&xfer->xroot->bus->intr_q, xfer);


  if (xfer->timeout != 0) {
   usbd_transfer_timeout_ms(xfer,
       &avr32dci_timeout, xfer->timeout);
  }
 }
}
