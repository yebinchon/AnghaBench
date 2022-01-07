
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
struct usb_xfer_queue {struct usb_xfer* curr; } ;
struct usb_xfer_root {TYPE_6__* bus; struct usb_xfer_queue dma_q; int xfer_mtx; } ;
struct TYPE_7__ {scalar_t__ control_act; int transferring; } ;
struct usb_xfer {scalar_t__ error; TYPE_5__* endpoint; int timeout_handle; TYPE_1__ flags_int; struct usb_xfer_root* xroot; } ;
struct TYPE_9__ {int * uds_requests; } ;
struct TYPE_8__ {int * uds_requests; } ;
struct TYPE_12__ {TYPE_3__ stats_ok; TYPE_2__ stats_err; } ;
struct TYPE_11__ {TYPE_4__* edesc; } ;
struct TYPE_10__ {size_t bmAttributes; } ;


 int DPRINTF (char*,...) ;
 int MA_OWNED ;
 size_t UE_XFERTYPE ;
 int USB_BUS_LOCK_ASSERT (TYPE_6__*,int ) ;
 scalar_t__ USB_ERR_NORMAL_COMPLETION ;
 scalar_t__ mtx_owned (int ) ;
 int usb_callout_stop (int *) ;
 int usb_command_wrapper (struct usb_xfer_queue*,int *) ;
 int usbd_callback_ss_done_defer (struct usb_xfer*) ;
 int usbd_errstr (scalar_t__) ;
 int usbd_transfer_dequeue (struct usb_xfer*) ;

void
usbd_transfer_done(struct usb_xfer *xfer, usb_error_t error)
{
 struct usb_xfer_root *info = xfer->xroot;

 USB_BUS_LOCK_ASSERT(info->bus, MA_OWNED);

 DPRINTF("err=%s\n", usbd_errstr(error));





 if (!xfer->flags_int.transferring) {
  DPRINTF("not transferring\n");

  xfer->flags_int.control_act = 0;
  return;
 }

 if (xfer->error == USB_ERR_NORMAL_COMPLETION)
  xfer->error = error;


 usb_callout_stop(&xfer->timeout_handle);






 usbd_transfer_dequeue(xfer);
 if (xfer->error) {
  info->bus->stats_err.uds_requests
      [xfer->endpoint->edesc->bmAttributes & UE_XFERTYPE]++;
 } else {
  info->bus->stats_ok.uds_requests
      [xfer->endpoint->edesc->bmAttributes & UE_XFERTYPE]++;
 }


 usbd_callback_ss_done_defer(xfer);
}
