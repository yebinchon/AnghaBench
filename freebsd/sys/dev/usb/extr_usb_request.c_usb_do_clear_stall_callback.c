
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t usb_stream_t ;
typedef int usb_error_t ;
typedef int uint8_t ;
struct usb_xfer {int nframes; int frbuffers; TYPE_1__* xroot; } ;
struct usb_endpoint {TYPE_2__* edesc; int is_stalled; TYPE_3__* endpoint_q; int toggle_next; } ;
struct usb_device_request {int wLength; int * wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct usb_device {int endpoints_max; int bus; struct usb_endpoint* ep_curr; int clear_stall_errors; struct usb_endpoint* endpoints; } ;
typedef int req ;
struct TYPE_6__ {int curr; } ;
struct TYPE_5__ {int bEndpointAddress; } ;
struct TYPE_4__ {struct usb_device* udev; } ;


 int DPRINTF (char*) ;
 int UF_ENDPOINT_HALT ;
 int UR_CLEAR_FEATURE ;
 int USB_BUS_LOCK (int ) ;
 int USB_BUS_UNLOCK (int ) ;
 int USB_CS_RESET_LIMIT ;
 int USB_ERR_CANCELLED ;
 int USB_ERR_TIMEOUT ;
 int USB_GET_STATE (struct usb_xfer*) ;
 size_t USB_MAX_EP_STREAMS ;


 int USETW (int ,int ) ;
 int UT_WRITE_ENDPOINT ;
 int usb_command_wrapper (TYPE_3__*,int ) ;
 int usb_no_cs_fail ;
 int usbd_clear_stall_locked (struct usb_device*,struct usb_endpoint*) ;
 int usbd_copy_in (int ,int ,struct usb_device_request*,int) ;
 int usbd_start_re_enumerate (struct usb_device*) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int) ;

void
usb_do_clear_stall_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct usb_device_request req;
 struct usb_device *udev;
 struct usb_endpoint *ep;
 struct usb_endpoint *ep_end;
 struct usb_endpoint *ep_first;
 usb_stream_t x;
 uint8_t to;

 udev = xfer->xroot->udev;

 USB_BUS_LOCK(udev->bus);



 ep = udev->ep_curr;
 ep_end = udev->endpoints + udev->endpoints_max;
 ep_first = udev->endpoints;
 to = udev->endpoints_max;

 switch (USB_GET_STATE(xfer)) {
 case 128:
tr_transferred:

  udev->clear_stall_errors = 0;

  if (ep == ((void*)0))
   goto tr_setup;
  if (ep->edesc &&
      ep->is_stalled) {
   ep->toggle_next = 0;
   ep->is_stalled = 0;

   usbd_clear_stall_locked(udev, ep);
   for (x = 0; x != USB_MAX_EP_STREAMS; x++) {

    usb_command_wrapper(&ep->endpoint_q[x],
        ep->endpoint_q[x].curr);
   }
  }
  ep++;

 case 129:
tr_setup:
  if (to == 0)
   break;
  if ((ep < ep_first) || (ep >= ep_end))
   ep = ep_first;
  if (ep->edesc &&
      ep->is_stalled) {



   req.bmRequestType = UT_WRITE_ENDPOINT;
   req.bRequest = UR_CLEAR_FEATURE;
   USETW(req.wValue, UF_ENDPOINT_HALT);
   req.wIndex[0] = ep->edesc->bEndpointAddress;
   req.wIndex[1] = 0;
   USETW(req.wLength, 0);



   usbd_copy_in(xfer->frbuffers, 0, &req, sizeof(req));


   usbd_xfer_set_frame_len(xfer, 0, sizeof(req));
   xfer->nframes = 1;
   USB_BUS_UNLOCK(udev->bus);

   usbd_transfer_submit(xfer);

   USB_BUS_LOCK(udev->bus);
   break;
  }
  ep++;
  to--;
  goto tr_setup;

 default:
  if (error == USB_ERR_CANCELLED)
   break;

  DPRINTF("Clear stall failed.\n");





  if (usb_no_cs_fail)
   goto tr_transferred;
  if (udev->clear_stall_errors == USB_CS_RESET_LIMIT)
   goto tr_setup;

  if (error == USB_ERR_TIMEOUT) {
   udev->clear_stall_errors = USB_CS_RESET_LIMIT;
   DPRINTF("Trying to re-enumerate.\n");
   usbd_start_re_enumerate(udev);
  } else {
   udev->clear_stall_errors++;
   if (udev->clear_stall_errors == USB_CS_RESET_LIMIT) {
    DPRINTF("Trying to re-enumerate.\n");
    usbd_start_re_enumerate(udev);
   }
  }
  goto tr_setup;
 }


 udev->ep_curr = ep;
 USB_BUS_UNLOCK(udev->bus);
}
