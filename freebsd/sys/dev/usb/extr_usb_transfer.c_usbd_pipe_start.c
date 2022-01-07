
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_xfer_root {int bus; struct usb_device* udev; } ;
struct usb_xfer_queue {struct usb_xfer* curr; } ;
struct TYPE_15__ {int can_cancel_immed; } ;
struct TYPE_9__ {scalar_t__ stall_pipe; } ;
struct usb_xfer {scalar_t__ nframes; scalar_t__ interval; scalar_t__ error; TYPE_7__ flags_int; scalar_t__ aframes; struct usb_xfer_root* xroot; TYPE_1__ flags; struct usb_endpoint* endpoint; } ;
struct usb_endpoint {int is_stalled; TYPE_8__* methods; TYPE_6__* edesc; } ;
struct TYPE_11__ {scalar_t__ usb_mode; } ;
struct usb_device {TYPE_5__* bus; TYPE_3__ flags; int * cs_msg; TYPE_2__** ctrl_xfer; } ;
struct TYPE_16__ {int (* start ) (struct usb_xfer*) ;} ;
struct TYPE_14__ {int bmAttributes; } ;
struct TYPE_13__ {TYPE_4__* methods; } ;
struct TYPE_12__ {int (* clear_stall ) (struct usb_device*,struct usb_endpoint*) ;int (* set_stall ) (struct usb_device*,struct usb_endpoint*,int*) ;} ;
struct TYPE_10__ {struct usb_xfer_root* xroot; } ;


 int DPRINTF (char*) ;
 int DPRINTFN (int ,char*) ;
 int MA_OWNED ;
 int UE_BULK ;
 int UE_CONTROL ;
 int UE_INTERRUPT ;
 int UE_ISOCHRONOUS ;
 int UE_XFERTYPE ;
 int USBPF_XFERTAP_SUBMIT ;
 int USB_BUS_CS_PROC (int ) ;
 int USB_BUS_LOCK_ASSERT (int ,int ) ;
 scalar_t__ USB_MODE_DEVICE ;
 int stub1 (struct usb_device*,struct usb_endpoint*,int*) ;
 int stub2 (struct usb_device*,struct usb_endpoint*) ;
 int stub3 (struct usb_xfer*) ;
 int usb_proc_msignal (int ,int *,int *) ;
 int usbd_transfer_done (struct usb_xfer*,int ) ;
 int usbd_transfer_start_cb ;
 int usbd_transfer_timeout_ms (struct usb_xfer*,int *,scalar_t__) ;
 int usbpf_xfertap (struct usb_xfer*,int ) ;

void
usbd_pipe_start(struct usb_xfer_queue *pq)
{
 struct usb_endpoint *ep;
 struct usb_xfer *xfer;
 uint8_t type;

 xfer = pq->curr;
 ep = xfer->endpoint;

 USB_BUS_LOCK_ASSERT(xfer->xroot->bus, MA_OWNED);




 if (ep->is_stalled) {
  return;
 }



 if (xfer->flags.stall_pipe) {
  struct usb_device *udev;
  struct usb_xfer_root *info;


  xfer->flags.stall_pipe = 0;


  info = xfer->xroot;
  udev = info->udev;




  type = (ep->edesc->bmAttributes & UE_XFERTYPE);
  if ((type == UE_BULK) ||
      (type == UE_INTERRUPT)) {
   uint8_t did_stall;

   did_stall = 1;

   if (udev->flags.usb_mode == USB_MODE_DEVICE) {
    (udev->bus->methods->set_stall) (
        udev, ep, &did_stall);
   } else if (udev->ctrl_xfer[1]) {
    info = udev->ctrl_xfer[1]->xroot;
    usb_proc_msignal(
        USB_BUS_CS_PROC(info->bus),
        &udev->cs_msg[0], &udev->cs_msg[1]);
   } else {

    DPRINTFN(0, "No stall handler\n");
   }




   if (did_stall) {





    ep->is_stalled = 1;
    return;
   }
  } else if (type == UE_ISOCHRONOUS) {







   if (udev->flags.usb_mode == USB_MODE_DEVICE) {
    (udev->bus->methods->clear_stall) (udev, ep);
   }
  }
 }

 if (xfer->nframes == 0) {

  xfer->aframes = 0;
  usbd_transfer_done(xfer, 0);
  return;
 }
 if (xfer->interval > 0) {
  type = (ep->edesc->bmAttributes & UE_XFERTYPE);
  if ((type == UE_BULK) ||
      (type == UE_CONTROL)) {
   usbd_transfer_timeout_ms(xfer,
       &usbd_transfer_start_cb,
       xfer->interval);
   return;
  }
 }
 DPRINTF("start\n");





 xfer->flags_int.can_cancel_immed = 1;


 if (xfer->error == 0)
  (ep->methods->start) (xfer);


 if (xfer->error) {

  usbd_transfer_done(xfer, 0);
 }
}
