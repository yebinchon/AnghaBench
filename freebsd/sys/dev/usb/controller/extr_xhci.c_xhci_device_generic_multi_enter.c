
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t usb_stream_t ;
struct TYPE_3__ {int bandwidth_reclaimed; } ;
struct usb_xfer {TYPE_1__ flags_int; } ;
struct usb_endpoint {TYPE_2__* endpoint_q; } ;
struct TYPE_4__ {int head; struct usb_xfer* curr; } ;


 struct usb_xfer* TAILQ_FIRST (int *) ;
 int xhci_transfer_insert (struct usb_xfer*) ;

__attribute__((used)) static void
xhci_device_generic_multi_enter(struct usb_endpoint *ep,
    usb_stream_t stream_id, struct usb_xfer *enter_xfer)
{
 struct usb_xfer *xfer;


 xfer = ep->endpoint_q[stream_id].curr;
 if (xfer == ((void*)0))
  return;






 if (!xfer->flags_int.bandwidth_reclaimed)
  return;

 xfer = TAILQ_FIRST(&ep->endpoint_q[stream_id].head);
 if (xfer == ((void*)0)) {





  xfer = enter_xfer;

  if (xfer == ((void*)0))
   return;
 }


 xhci_transfer_insert(xfer);
}
