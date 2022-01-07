
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint16_t ;
struct usb_xfer_root {scalar_t__ setup_refcount; int bus; } ;
struct TYPE_3__ {scalar_t__ bdma_enable; } ;
struct usb_xfer {int timeout_handle; TYPE_2__* endpoint; TYPE_1__ flags_int; struct usb_xfer_root* xroot; } ;
struct TYPE_4__ {int refcount_alloc; } ;


 int USB_ASSERT (int,char*) ;
 int USB_BUS_LOCK (int ) ;
 int USB_BUS_UNLOCK (int ) ;
 int USB_XFER_LOCK (struct usb_xfer*) ;
 int USB_XFER_UNLOCK (struct usb_xfer*) ;
 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,int *,char*) ;
 int usb_callout_drain (int *) ;
 int usbd_transfer_drain (struct usb_xfer*) ;
 int usbd_transfer_unsetup_sub (struct usb_xfer_root*,int) ;

void
usbd_transfer_unsetup(struct usb_xfer **pxfer, uint16_t n_setup)
{
 struct usb_xfer *xfer;
 struct usb_xfer_root *info;
 uint8_t needs_delay = 0;

 WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, ((void*)0),
     "usbd_transfer_unsetup can sleep!");

 while (n_setup--) {
  xfer = pxfer[n_setup];

  if (xfer == ((void*)0))
   continue;

  info = xfer->xroot;

  USB_XFER_LOCK(xfer);
  USB_BUS_LOCK(info->bus);
  pxfer[n_setup] = ((void*)0);

  USB_BUS_UNLOCK(info->bus);
  USB_XFER_UNLOCK(xfer);

  usbd_transfer_drain(xfer);
  USB_BUS_LOCK(info->bus);
  xfer->endpoint->refcount_alloc--;
  USB_BUS_UNLOCK(info->bus);

  usb_callout_drain(&xfer->timeout_handle);

  USB_BUS_LOCK(info->bus);

  USB_ASSERT(info->setup_refcount != 0, ("Invalid setup "
      "reference count\n"));

  info->setup_refcount--;

  if (info->setup_refcount == 0) {
   usbd_transfer_unsetup_sub(info,
       needs_delay);
  } else {
   USB_BUS_UNLOCK(info->bus);
  }
 }
}
