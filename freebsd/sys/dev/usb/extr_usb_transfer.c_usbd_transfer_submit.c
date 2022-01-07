
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t usb_frcount_t ;
struct usb_xfer_root {int dma_q; TYPE_2__* udev; struct usb_bus* bus; } ;
struct TYPE_9__ {int open; int transferring; int can_cancel_immed; int short_xfer_ok; int short_frames_ok; scalar_t__ bdma_enable; scalar_t__ control_xfr; scalar_t__ bdma_setup; scalar_t__ did_close; scalar_t__ did_dma_delay; } ;
struct TYPE_8__ {scalar_t__ short_xfer_ok; scalar_t__ short_frames_ok; scalar_t__ stall_pipe; } ;
struct usb_xfer {scalar_t__ nframes; scalar_t__ sumlen; size_t stream_id; scalar_t__* frlengths; size_t max_frame_count; struct usb_xfer_root* xroot; TYPE_4__ flags_int; TYPE_3__ flags; TYPE_5__* endpoint; scalar_t__ error; scalar_t__ aframes; scalar_t__ actlen; scalar_t__ wait_queue; } ;
struct usb_bus {int dummy; } ;
struct TYPE_10__ {int * endpoint_q; TYPE_1__* methods; } ;
struct TYPE_7__ {scalar_t__ state; } ;
struct TYPE_6__ {int (* open ) (struct usb_xfer*) ;} ;


 int DPRINTF (char*,...) ;
 int MA_NOTOWNED ;
 int MA_OWNED ;
 int USB_BUS_LOCK (struct usb_bus*) ;
 int USB_BUS_LOCK_ASSERT (struct usb_bus*,int ) ;
 int USB_BUS_UNLOCK (struct usb_bus*) ;
 scalar_t__ USB_DEBUG_VAR ;
 int USB_ERR_CANCELLED ;
 int USB_ERR_INVAL ;
 int USB_ERR_STALLED ;
 scalar_t__ USB_GET_DATA_ISREAD (struct usb_xfer*) ;
 scalar_t__ USB_STATE_POWERED ;
 int USB_XFER_LOCK_ASSERT (struct usb_xfer*,int ) ;
 int stub1 (struct usb_xfer*) ;
 int usb_command_wrapper (int *,struct usb_xfer*) ;
 int usb_dump_endpoint (TYPE_5__*) ;
 int usbd_pipe_enter (struct usb_xfer*) ;
 scalar_t__ usbd_setup_ctrl_transfer (struct usb_xfer*) ;
 int usbd_transfer_dequeue (struct usb_xfer*) ;
 int usbd_transfer_done (struct usb_xfer*,int ) ;
 int usbd_transfer_power_ref (struct usb_xfer*,int) ;

void
usbd_transfer_submit(struct usb_xfer *xfer)
{
 struct usb_xfer_root *info;
 struct usb_bus *bus;
 usb_frcount_t x;

 info = xfer->xroot;
 bus = info->bus;

 DPRINTF("xfer=%p, endpoint=%p, nframes=%d, dir=%s\n",
     xfer, xfer->endpoint, xfer->nframes, USB_GET_DATA_ISREAD(xfer) ?
     "read" : "write");
 USB_XFER_LOCK_ASSERT(xfer, MA_OWNED);
 USB_BUS_LOCK_ASSERT(bus, MA_NOTOWNED);


 if (!xfer->flags_int.open) {
  xfer->flags_int.open = 1;

  DPRINTF("open\n");

  USB_BUS_LOCK(bus);
  (xfer->endpoint->methods->open) (xfer);
  USB_BUS_UNLOCK(bus);
 }

 xfer->flags_int.transferring = 1;
 if (xfer->wait_queue) {
  USB_BUS_LOCK(bus);
  usbd_transfer_dequeue(xfer);
  USB_BUS_UNLOCK(bus);
 }

 xfer->flags_int.did_dma_delay = 0;


 xfer->flags_int.did_close = 0;






 xfer->flags_int.can_cancel_immed = 0;


 xfer->sumlen = 0;
 xfer->actlen = 0;
 xfer->aframes = 0;


 xfer->error = 0;


 if (info->udev->state < USB_STATE_POWERED) {
  USB_BUS_LOCK(bus);




  usbd_transfer_done(xfer, USB_ERR_CANCELLED);
  USB_BUS_UNLOCK(bus);
  return;
 }


 if (xfer->nframes == 0) {
  if (xfer->flags.stall_pipe) {




   DPRINTF("xfer=%p nframes=0: stall "
       "or clear stall!\n", xfer);
   USB_BUS_LOCK(bus);
   xfer->flags_int.can_cancel_immed = 1;

   usb_command_wrapper(&xfer->endpoint->
       endpoint_q[xfer->stream_id], xfer);
   USB_BUS_UNLOCK(bus);
   return;
  }
  USB_BUS_LOCK(bus);
  usbd_transfer_done(xfer, USB_ERR_INVAL);
  USB_BUS_UNLOCK(bus);
  return;
 }


 for (x = 0; x != xfer->nframes; x++) {

  xfer->frlengths[x + xfer->max_frame_count] = xfer->frlengths[x];

  xfer->sumlen += xfer->frlengths[x];
  if (xfer->sumlen < xfer->frlengths[x]) {

   USB_BUS_LOCK(bus);
   usbd_transfer_done(xfer, USB_ERR_INVAL);
   USB_BUS_UNLOCK(bus);
   return;
  }
 }



 xfer->flags_int.short_xfer_ok = 0;
 xfer->flags_int.short_frames_ok = 0;



 if (xfer->flags_int.control_xfr) {

  if (usbd_setup_ctrl_transfer(xfer)) {
   USB_BUS_LOCK(bus);
   usbd_transfer_done(xfer, USB_ERR_STALLED);
   USB_BUS_UNLOCK(bus);
   return;
  }
 }




 if (USB_GET_DATA_ISREAD(xfer)) {

  if (xfer->flags.short_frames_ok) {
   xfer->flags_int.short_xfer_ok = 1;
   xfer->flags_int.short_frames_ok = 1;
  } else if (xfer->flags.short_xfer_ok) {
   xfer->flags_int.short_xfer_ok = 1;


   if (xfer->flags_int.control_xfr) {
    xfer->flags_int.short_frames_ok = 1;
   }
  }
 }
 usbd_pipe_enter(xfer);
}
