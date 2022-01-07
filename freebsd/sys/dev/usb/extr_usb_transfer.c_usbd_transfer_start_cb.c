
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int can_cancel_immed; } ;
struct usb_xfer {scalar_t__ error; TYPE_3__ flags_int; TYPE_2__* xroot; struct usb_endpoint* endpoint; } ;
struct usb_endpoint {TYPE_1__* methods; } ;
struct TYPE_5__ {int bus; } ;
struct TYPE_4__ {int (* start ) (struct usb_xfer*) ;} ;


 int DPRINTF (char*) ;
 int MA_OWNED ;
 int USBPF_XFERTAP_SUBMIT ;
 int USB_BUS_LOCK_ASSERT (int ,int ) ;
 int stub1 (struct usb_xfer*) ;
 int usbd_transfer_done (struct usb_xfer*,int ) ;
 int usbpf_xfertap (struct usb_xfer*,int ) ;

__attribute__((used)) static void
usbd_transfer_start_cb(void *arg)
{
 struct usb_xfer *xfer = arg;
 struct usb_endpoint *ep = xfer->endpoint;

 USB_BUS_LOCK_ASSERT(xfer->xroot->bus, MA_OWNED);

 DPRINTF("start\n");






 xfer->flags_int.can_cancel_immed = 1;


 if (xfer->error == 0)
  (ep->methods->start) (xfer);


 if (xfer->error) {

  usbd_transfer_done(xfer, 0);
 }
}
