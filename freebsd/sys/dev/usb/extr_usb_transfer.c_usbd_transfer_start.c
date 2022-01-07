
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int started; scalar_t__ transferring; } ;
struct usb_xfer {TYPE_2__* xroot; TYPE_1__ flags_int; } ;
struct TYPE_4__ {int bus; } ;


 int MA_OWNED ;
 int USB_BUS_LOCK (int ) ;
 int USB_BUS_UNLOCK (int ) ;
 int USB_XFER_LOCK_ASSERT (struct usb_xfer*,int ) ;
 int usbd_callback_ss_done_defer (struct usb_xfer*) ;

void
usbd_transfer_start(struct usb_xfer *xfer)
{
 if (xfer == ((void*)0)) {

  return;
 }
 USB_XFER_LOCK_ASSERT(xfer, MA_OWNED);



 if (!xfer->flags_int.started) {

  USB_BUS_LOCK(xfer->xroot->bus);
  xfer->flags_int.started = 1;
  USB_BUS_UNLOCK(xfer->xroot->bus);
 }


 if (xfer->flags_int.transferring) {
  return;
 }
 USB_BUS_LOCK(xfer->xroot->bus);

 usbd_callback_ss_done_defer(xfer);
 USB_BUS_UNLOCK(xfer->xroot->bus);
}
