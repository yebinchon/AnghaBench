
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int usb_error_t ;
struct TYPE_5__ {int manual_status; scalar_t__ force_short_xfer; } ;
struct TYPE_4__ {int control_rem; } ;
struct usb_xfer {int nframes; TYPE_2__ flags; int error; TYPE_1__ flags_int; TYPE_3__* xroot; } ;
struct usb_device_request {int dummy; } ;
struct TYPE_6__ {int bus; } ;


 int USB_ERR_BAD_CONTEXT ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int usb_handle_request (struct usb_xfer*) ;
 int usb_needs_explore (int ,int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;

void
usb_handle_request_callback(struct usb_xfer *xfer, usb_error_t error)
{
 usb_error_t err;



 switch (USB_GET_STATE(xfer)) {
 case 129:
 case 128:


  err = usb_handle_request(xfer);

  if (err) {

   if (err == USB_ERR_BAD_CONTEXT) {

    usb_needs_explore(xfer->xroot->bus, 0);
    break;
   }
   goto tr_restart;
  }
  usbd_transfer_submit(xfer);
  break;

 default:

  if (xfer->flags_int.control_rem != 0xFFFF) {

   err = usb_handle_request(xfer);
  }
  if (xfer->error != USB_ERR_CANCELLED) {

   goto tr_restart;
  }
  break;
 }
 return;

tr_restart:




 usbd_xfer_set_frame_len(xfer, 0, sizeof(struct usb_device_request));
 xfer->nframes = 1;
 xfer->flags.manual_status = 1;
 xfer->flags.force_short_xfer = 0;
 usbd_xfer_set_stall(xfer);
 usbd_transfer_submit(xfer);
}
