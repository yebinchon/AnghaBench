
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int can_cancel_immed; } ;
struct usb_xfer {size_t stream_id; TYPE_3__* xroot; scalar_t__ error; TYPE_1__ flags_int; struct usb_endpoint* endpoint; } ;
struct usb_endpoint {int * endpoint_q; TYPE_2__* methods; } ;
struct TYPE_6__ {int bus; } ;
struct TYPE_5__ {int (* enter ) (struct usb_xfer*) ;} ;


 int DPRINTF (char*) ;
 int MA_OWNED ;
 int USB_BUS_LOCK (int ) ;
 int USB_BUS_UNLOCK (int ) ;
 int USB_XFER_LOCK_ASSERT (struct usb_xfer*,int ) ;
 int stub1 (struct usb_xfer*) ;
 int usb_command_wrapper (int *,struct usb_xfer*) ;
 int usbd_transfer_done (struct usb_xfer*,int ) ;

void
usbd_pipe_enter(struct usb_xfer *xfer)
{
 struct usb_endpoint *ep;

 USB_XFER_LOCK_ASSERT(xfer, MA_OWNED);

 USB_BUS_LOCK(xfer->xroot->bus);

 ep = xfer->endpoint;

 DPRINTF("enter\n");


 xfer->flags_int.can_cancel_immed = 1;


 (ep->methods->enter) (xfer);


 if (xfer->error) {

  usbd_transfer_done(xfer, 0);
  USB_BUS_UNLOCK(xfer->xroot->bus);
  return;
 }


 usb_command_wrapper(&ep->endpoint_q[xfer->stream_id], xfer);
 USB_BUS_UNLOCK(xfer->xroot->bus);
}
