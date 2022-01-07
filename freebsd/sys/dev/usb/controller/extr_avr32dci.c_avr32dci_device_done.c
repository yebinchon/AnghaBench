
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ usb_mode; } ;
struct usb_xfer {int endpointno; TYPE_2__ flags_int; int endpoint; TYPE_1__* xroot; } ;
struct avr32dci_softc {int sc_bus; } ;
struct TYPE_3__ {int bus; } ;


 struct avr32dci_softc* AVR32_BUS2SC (int ) ;
 int AVR32_INT_EPT_INT (int) ;
 int DPRINTFN (int,char*,...) ;
 int MA_OWNED ;
 int UE_ADDR ;
 int USB_BUS_LOCK_ASSERT (int *,int ) ;
 scalar_t__ USB_MODE_DEVICE ;
 int avr32dci_mod_ien (struct avr32dci_softc*,int ,int ) ;
 int usbd_transfer_done (struct usb_xfer*,int ) ;

__attribute__((used)) static void
avr32dci_device_done(struct usb_xfer *xfer, usb_error_t error)
{
 struct avr32dci_softc *sc = AVR32_BUS2SC(xfer->xroot->bus);
 uint8_t ep_no;

 USB_BUS_LOCK_ASSERT(&sc->sc_bus, MA_OWNED);

 DPRINTFN(9, "xfer=%p, pipe=%p, error=%d\n",
     xfer, xfer->endpoint, error);

 if (xfer->flags_int.usb_mode == USB_MODE_DEVICE) {
  ep_no = (xfer->endpointno & UE_ADDR);


  avr32dci_mod_ien(sc, 0, AVR32_INT_EPT_INT(ep_no));

  DPRINTFN(15, "disabled interrupts!\n");
 }

 usbd_transfer_done(xfer, error);
}
