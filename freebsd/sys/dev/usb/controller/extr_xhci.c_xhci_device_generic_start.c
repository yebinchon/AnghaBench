
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_xfer {scalar_t__ timeout; TYPE_2__* xroot; int stream_id; int endpoint; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {int intr_q; } ;


 int DPRINTF (char*) ;
 int usbd_transfer_enqueue (int *,struct usb_xfer*) ;
 int usbd_transfer_timeout_ms (struct usb_xfer*,int *,scalar_t__) ;
 int xhci_device_generic_multi_enter (int ,int ,int *) ;
 int xhci_timeout ;
 int xhci_transfer_insert (struct usb_xfer*) ;

__attribute__((used)) static void
xhci_device_generic_start(struct usb_xfer *xfer)
{
 DPRINTF("\n");


 xhci_transfer_insert(xfer);


 xhci_device_generic_multi_enter(xfer->endpoint,
     xfer->stream_id, ((void*)0));


 usbd_transfer_enqueue(&xfer->xroot->bus->intr_q, xfer);


 if (xfer->timeout != 0)
  usbd_transfer_timeout_ms(xfer, &xhci_timeout, xfer->timeout);
}
