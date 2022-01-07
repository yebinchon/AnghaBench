
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
struct atmegadci_softc {int sc_bus; } ;
struct TYPE_3__ {int bus; } ;


 struct atmegadci_softc* ATMEGA_BUS2SC (int ) ;
 int ATMEGA_UEIENX ;
 int ATMEGA_UENUM ;
 int ATMEGA_WRITE_1 (struct atmegadci_softc*,int ,int) ;
 int DPRINTFN (int,char*,...) ;
 int MA_OWNED ;
 int UE_ADDR ;
 int USB_BUS_LOCK_ASSERT (int *,int ) ;
 scalar_t__ USB_MODE_DEVICE ;
 int usbd_transfer_done (struct usb_xfer*,int ) ;

__attribute__((used)) static void
atmegadci_device_done(struct usb_xfer *xfer, usb_error_t error)
{
 struct atmegadci_softc *sc = ATMEGA_BUS2SC(xfer->xroot->bus);
 uint8_t ep_no;

 USB_BUS_LOCK_ASSERT(&sc->sc_bus, MA_OWNED);

 DPRINTFN(9, "xfer=%p, endpoint=%p, error=%d\n",
     xfer, xfer->endpoint, error);

 if (xfer->flags_int.usb_mode == USB_MODE_DEVICE) {
  ep_no = (xfer->endpointno & UE_ADDR);


  ATMEGA_WRITE_1(sc, ATMEGA_UENUM, ep_no);


  ATMEGA_WRITE_1(sc, ATMEGA_UEIENX, 0);

  DPRINTFN(15, "disabled interrupts!\n");
 }

 usbd_transfer_done(xfer, error);
}
