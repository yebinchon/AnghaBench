
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_xfer {scalar_t__ timeout; TYPE_2__* xroot; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {int intr_q; } ;


 scalar_t__ ehci_check_transfer (struct usb_xfer*) ;
 int ehci_timeout ;
 int usbd_transfer_enqueue (int *,struct usb_xfer*) ;
 int usbd_transfer_timeout_ms (struct usb_xfer*,int *,scalar_t__) ;

__attribute__((used)) static void
ehci_transfer_intr_enqueue(struct usb_xfer *xfer)
{

 if (ehci_check_transfer(xfer)) {
  return;
 }

 usbd_transfer_enqueue(&xfer->xroot->bus->intr_q, xfer);


 if (xfer->timeout != 0) {
  usbd_transfer_timeout_ms(xfer, &ehci_timeout, xfer->timeout);
 }
}
