
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int draining; scalar_t__ doing_callback; } ;
struct usb_xfer {TYPE_1__* xroot; TYPE_2__ flags_int; } ;
struct TYPE_3__ {int * xfer_mtx; int cv_drain; } ;


 int Giant ;
 int MA_NOTOWNED ;
 int USB_XFER_LOCK (struct usb_xfer*) ;
 int USB_XFER_LOCK_ASSERT (struct usb_xfer*,int ) ;
 int USB_XFER_UNLOCK (struct usb_xfer*) ;
 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,int *,char*) ;
 int cv_wait (int *,int *) ;
 scalar_t__ usbd_transfer_pending (struct usb_xfer*) ;
 int usbd_transfer_stop (struct usb_xfer*) ;

void
usbd_transfer_drain(struct usb_xfer *xfer)
{
 WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, ((void*)0),
     "usbd_transfer_drain can sleep!");

 if (xfer == ((void*)0)) {

  return;
 }
 if (xfer->xroot->xfer_mtx != &Giant) {
  USB_XFER_LOCK_ASSERT(xfer, MA_NOTOWNED);
 }
 USB_XFER_LOCK(xfer);

 usbd_transfer_stop(xfer);

 while (usbd_transfer_pending(xfer) ||
     xfer->flags_int.doing_callback) {
  xfer->flags_int.draining = 1;





  cv_wait(&xfer->xroot->cv_drain, xfer->xroot->xfer_mtx);
 }
 USB_XFER_UNLOCK(xfer);
}
