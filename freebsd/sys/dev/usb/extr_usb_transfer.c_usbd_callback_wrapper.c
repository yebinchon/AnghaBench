
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct usb_xfer* curr; } ;
struct usb_xfer_root {TYPE_2__ done_q; int cv_drain; int bus; int * done_m; int done_p; int xfer_mtx; } ;
struct usb_xfer_queue {scalar_t__ recurse_3; struct usb_xfer* curr; } ;
struct TYPE_3__ {int doing_callback; scalar_t__ draining; scalar_t__ transferring; scalar_t__ started; int open; int bdma_no_post_sync; scalar_t__ bdma_enable; } ;
struct usb_xfer {scalar_t__ usb_state; TYPE_1__ flags_int; scalar_t__ error; int (* callback ) (struct usb_xfer*,scalar_t__) ;struct usb_xfer_root* xroot; } ;


 int DPRINTFN (int,char*) ;
 int MA_NOTOWNED ;
 int MA_OWNED ;
 int USBPF_XFERTAP_DONE ;
 int USB_BUS_LOCK (int ) ;
 int USB_BUS_LOCK_ASSERT (int ,int ) ;
 int USB_BUS_UNLOCK (int ) ;
 scalar_t__ USB_IN_POLLING_MODE_FUNC () ;
 scalar_t__ USB_ST_ERROR ;
 scalar_t__ USB_ST_SETUP ;
 scalar_t__ USB_ST_TRANSFERRED ;
 int cv_broadcast (int *) ;
 scalar_t__ mtx_owned (int ) ;
 int stub1 (struct usb_xfer*,scalar_t__) ;
 int usb_bdma_post_sync (struct usb_xfer*) ;
 int usb_command_wrapper (TYPE_2__*,struct usb_xfer*) ;
 int usb_proc_msignal (int ,int *,int *) ;
 scalar_t__ usbd_callback_wrapper_sub (struct usb_xfer*) ;
 int usbd_transfer_power_ref (struct usb_xfer*,int) ;
 int usbpf_xfertap (struct usb_xfer*,int ) ;

__attribute__((used)) static void
usbd_callback_wrapper(struct usb_xfer_queue *pq)
{
 struct usb_xfer *xfer = pq->curr;
 struct usb_xfer_root *info = xfer->xroot;

 USB_BUS_LOCK_ASSERT(info->bus, MA_OWNED);
 if ((pq->recurse_3 != 0 || mtx_owned(info->xfer_mtx) == 0) &&
     USB_IN_POLLING_MODE_FUNC() == 0) {






  DPRINTFN(3, "case 5 and 6\n");
  (void) usb_proc_msignal(info->done_p,
      &info->done_m[0], &info->done_m[1]);
  return;
 }
 DPRINTFN(3, "case 1-4\n");

 info->done_q.curr = ((void*)0);


 xfer->flags_int.doing_callback = 1;

 USB_BUS_UNLOCK(info->bus);
 USB_BUS_LOCK_ASSERT(info->bus, MA_NOTOWNED);


 if (!xfer->flags_int.transferring) {
  xfer->usb_state = USB_ST_SETUP;
  if (!xfer->flags_int.started) {

   USB_BUS_LOCK(info->bus);
   goto done;
  }
 } else {

  if (usbd_callback_wrapper_sub(xfer)) {

   USB_BUS_LOCK(info->bus);
   goto done;
  }




  xfer->flags_int.transferring = 0;

  if (xfer->error) {
   xfer->usb_state = USB_ST_ERROR;
  } else {

   xfer->usb_state = USB_ST_TRANSFERRED;







  }
 }
 (xfer->callback) (xfer, xfer->error);


 USB_BUS_LOCK(info->bus);





 if ((!xfer->flags_int.open) &&
     (xfer->flags_int.started) &&
     (xfer->usb_state == USB_ST_ERROR)) {

  xfer->flags_int.doing_callback = 0;

  usb_command_wrapper(&info->done_q, xfer);
  return;
 }

done:

 xfer->flags_int.doing_callback = 0;




 if (xfer->flags_int.draining &&
     (!xfer->flags_int.transferring)) {

  xfer->flags_int.draining = 0;
  cv_broadcast(&info->cv_drain);
 }


 usb_command_wrapper(&info->done_q,
     info->done_q.curr);
}
