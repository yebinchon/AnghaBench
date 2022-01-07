
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int did_close; scalar_t__ can_cancel_immed; scalar_t__ transferring; scalar_t__ started; scalar_t__ open; } ;
struct usb_xfer {size_t stream_id; TYPE_3__* xroot; struct usb_endpoint* endpoint; TYPE_1__ flags_int; int error; } ;
struct usb_endpoint {TYPE_4__* endpoint_q; TYPE_2__* methods; } ;
struct TYPE_8__ {struct usb_xfer* curr; } ;
struct TYPE_7__ {int bus; } ;
struct TYPE_6__ {int (* close ) (struct usb_xfer*) ;} ;


 int DPRINTF (char*) ;
 int MA_OWNED ;
 int USB_BUS_LOCK (int ) ;
 int USB_BUS_UNLOCK (int ) ;
 int USB_ERR_CANCELLED ;
 int USB_XFER_LOCK_ASSERT (struct usb_xfer*,int ) ;
 int stub1 (struct usb_xfer*) ;
 int stub2 (struct usb_xfer*) ;
 int usb_command_wrapper (TYPE_4__*,int *) ;

void
usbd_transfer_stop(struct usb_xfer *xfer)
{
 struct usb_endpoint *ep;

 if (xfer == ((void*)0)) {

  return;
 }
 USB_XFER_LOCK_ASSERT(xfer, MA_OWNED);



 if (!xfer->flags_int.open) {
  if (xfer->flags_int.started) {


   USB_BUS_LOCK(xfer->xroot->bus);
   xfer->flags_int.started = 0;
   USB_BUS_UNLOCK(xfer->xroot->bus);
  }
  return;
 }


 USB_BUS_LOCK(xfer->xroot->bus);

 xfer->error = USB_ERR_CANCELLED;





 xfer->flags_int.open = 0;
 xfer->flags_int.started = 0;




 if (xfer->flags_int.transferring) {
  if (xfer->flags_int.can_cancel_immed &&
      (!xfer->flags_int.did_close)) {
   DPRINTF("close\n");




   (xfer->endpoint->methods->close) (xfer);

   xfer->flags_int.did_close = 1;
  } else {

  }
 } else {
  DPRINTF("close\n");


  (xfer->endpoint->methods->close) (xfer);
  ep = xfer->endpoint;





  if (ep->endpoint_q[xfer->stream_id].curr == xfer) {
   usb_command_wrapper(
       &ep->endpoint_q[xfer->stream_id], ((void*)0));
  }
 }

 USB_BUS_UNLOCK(xfer->xroot->bus);
}
