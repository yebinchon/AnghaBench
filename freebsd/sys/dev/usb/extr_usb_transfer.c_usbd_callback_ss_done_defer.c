
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer_queue {scalar_t__ recurse_2; int recurse_1; struct usb_xfer* curr; } ;
struct usb_xfer_root {int * done_m; int done_p; int bus; struct usb_xfer_queue done_q; } ;
struct usb_xfer {struct usb_xfer_root* xroot; } ;


 int MA_OWNED ;
 int USB_BUS_LOCK_ASSERT (int ,int ) ;
 int usb_proc_msignal (int ,int *,int *) ;
 int usbd_transfer_enqueue (struct usb_xfer_queue*,struct usb_xfer*) ;

__attribute__((used)) static void
usbd_callback_ss_done_defer(struct usb_xfer *xfer)
{
 struct usb_xfer_root *info = xfer->xroot;
 struct usb_xfer_queue *pq = &info->done_q;

 USB_BUS_LOCK_ASSERT(xfer->xroot->bus, MA_OWNED);

 if (pq->curr != xfer) {
  usbd_transfer_enqueue(pq, xfer);
 }
 if (!pq->recurse_1) {






  (void) usb_proc_msignal(info->done_p,
      &info->done_m[0], &info->done_m[1]);
 } else {

  pq->recurse_2 = 0;
 }
 return;

}
