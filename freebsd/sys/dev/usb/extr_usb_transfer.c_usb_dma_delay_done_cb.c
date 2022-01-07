
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_xfer {TYPE_1__* xroot; } ;
struct TYPE_2__ {int bus; } ;


 int DPRINTFN (int,char*,struct usb_xfer*) ;
 int MA_OWNED ;
 int USB_BUS_LOCK_ASSERT (int ,int ) ;
 int usbd_transfer_done (struct usb_xfer*,int ) ;

void
usb_dma_delay_done_cb(struct usb_xfer *xfer)
{
 USB_BUS_LOCK_ASSERT(xfer->xroot->bus, MA_OWNED);

 DPRINTFN(3, "Completed %p\n", xfer);


 usbd_transfer_done(xfer, 0);
}
