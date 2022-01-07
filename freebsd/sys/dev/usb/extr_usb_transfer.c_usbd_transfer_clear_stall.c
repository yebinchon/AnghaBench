
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ stall_pipe; } ;
struct usb_xfer {TYPE_2__* xroot; TYPE_1__ flags; } ;
struct TYPE_4__ {int bus; } ;


 int MA_OWNED ;
 int USB_BUS_LOCK (int ) ;
 int USB_BUS_UNLOCK (int ) ;
 int USB_XFER_LOCK_ASSERT (struct usb_xfer*,int ) ;

void
usbd_transfer_clear_stall(struct usb_xfer *xfer)
{
 if (xfer == ((void*)0)) {

  return;
 }
 USB_XFER_LOCK_ASSERT(xfer, MA_OWNED);


 USB_BUS_LOCK(xfer->xroot->bus);

 xfer->flags.stall_pipe = 0;

 USB_BUS_UNLOCK(xfer->xroot->bus);
}
