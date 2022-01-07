
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_timeout_t ;
struct usb_xfer {int timeout_handle; TYPE_1__* xroot; } ;
struct TYPE_2__ {int bus; } ;


 int MA_OWNED ;
 int USB_BUS_LOCK_ASSERT (int ,int ) ;
 scalar_t__ USB_CALLOUT_ZERO_TICKS ;
 scalar_t__ USB_MS_TO_TICKS (int ) ;
 int usb_callout_reset (int *,scalar_t__,void (*) (void*),struct usb_xfer*) ;

void
usbd_transfer_timeout_ms(struct usb_xfer *xfer,
    void (*cb) (void *arg), usb_timeout_t ms)
{
 USB_BUS_LOCK_ASSERT(xfer->xroot->bus, MA_OWNED);


 usb_callout_reset(&xfer->timeout_handle,
     USB_MS_TO_TICKS(ms) + USB_CALLOUT_ZERO_TICKS, cb, xfer);
}
