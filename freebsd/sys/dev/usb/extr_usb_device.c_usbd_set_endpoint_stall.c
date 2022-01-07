
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t usb_stream_t ;
typedef int usb_error_t ;
typedef int uint8_t ;
struct usb_xfer {int dummy; } ;
struct usb_endpoint {int is_stalled; TYPE_3__* endpoint_q; scalar_t__ toggle_next; TYPE_1__* edesc; } ;
struct usb_device {TYPE_4__* bus; } ;
struct TYPE_9__ {TYPE_2__* methods; } ;
struct TYPE_8__ {struct usb_xfer* curr; } ;
struct TYPE_7__ {int (* clear_stall ) (struct usb_device*,struct usb_endpoint*) ;int (* set_stall ) (struct usb_device*,struct usb_endpoint*,int*) ;int (* xfer_stall ) (struct usb_xfer*) ;} ;
struct TYPE_6__ {int bmAttributes; } ;


 int DPRINTF (char*) ;
 int UE_BULK ;
 int UE_INTERRUPT ;
 int UE_XFERTYPE ;
 int USB_BUS_LOCK (TYPE_4__*) ;
 int USB_BUS_UNLOCK (TYPE_4__*) ;
 size_t USB_MAX_EP_STREAMS ;
 int stub1 (struct usb_xfer*) ;
 int stub2 (struct usb_device*,struct usb_endpoint*,int*) ;
 int stub3 (struct usb_device*,struct usb_endpoint*) ;
 int usb_command_wrapper (TYPE_3__*,struct usb_xfer*) ;

usb_error_t
usbd_set_endpoint_stall(struct usb_device *udev, struct usb_endpoint *ep,
    uint8_t do_stall)
{
 struct usb_xfer *xfer;
 usb_stream_t x;
 uint8_t et;
 uint8_t was_stalled;

 if (ep == ((void*)0)) {

  DPRINTF("Cannot find endpoint\n");






  return (0);
 }
 et = (ep->edesc->bmAttributes & UE_XFERTYPE);

 if ((et != UE_BULK) &&
     (et != UE_INTERRUPT)) {




  DPRINTF("Invalid endpoint\n");
  return (0);
 }
 USB_BUS_LOCK(udev->bus);


 was_stalled = ep->is_stalled;


 if (was_stalled && do_stall) {

  USB_BUS_UNLOCK(udev->bus);
  DPRINTF("No change\n");
  return (0);
 }

 ep->is_stalled = 1;

 if (do_stall || (!was_stalled)) {
  if (!was_stalled) {
   for (x = 0; x != USB_MAX_EP_STREAMS; x++) {

    xfer = ep->endpoint_q[x].curr;
    if (xfer != ((void*)0)) {







     (udev->bus->methods->xfer_stall) (xfer);
    }
   }
  }
  (udev->bus->methods->set_stall) (udev, ep, &do_stall);
 }
 if (!do_stall) {
  ep->toggle_next = 0;
  ep->is_stalled = 0;

  (udev->bus->methods->clear_stall) (udev, ep);


  for (x = 0; x != USB_MAX_EP_STREAMS; x++) {
   usb_command_wrapper(&ep->endpoint_q[x],
       ep->endpoint_q[x].curr);
  }
 }
 USB_BUS_UNLOCK(udev->bus);
 return (0);
}
