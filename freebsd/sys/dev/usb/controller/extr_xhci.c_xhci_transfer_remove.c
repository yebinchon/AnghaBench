
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
struct xhci_endpoint_ext {scalar_t__ trb_running; int trb_halted; int ** xfer; int * trb_used; } ;
struct TYPE_6__ {scalar_t__ bandwidth_reclaimed; } ;
struct usb_xfer {size_t stream_id; size_t qh_pos; TYPE_2__* endpoint; TYPE_1__* xroot; TYPE_3__ flags_int; } ;
struct TYPE_5__ {int edesc; } ;
struct TYPE_4__ {int udev; } ;


 struct xhci_endpoint_ext* xhci_get_endpoint_ext (int ,int ) ;

__attribute__((used)) static void
xhci_transfer_remove(struct usb_xfer *xfer, usb_error_t error)
{
 struct xhci_endpoint_ext *pepext;

 if (xfer->flags_int.bandwidth_reclaimed) {
  xfer->flags_int.bandwidth_reclaimed = 0;

  pepext = xhci_get_endpoint_ext(xfer->xroot->udev,
      xfer->endpoint->edesc);

  pepext->trb_used[xfer->stream_id]--;

  pepext->xfer[xfer->qh_pos] = ((void*)0);

  if (error && pepext->trb_running != 0) {
   pepext->trb_halted = 1;
   pepext->trb_running = 0;
  }
 }
}
