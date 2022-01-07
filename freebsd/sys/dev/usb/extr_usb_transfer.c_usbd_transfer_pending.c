
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_xfer_queue {struct usb_xfer* curr; } ;
struct usb_xfer_root {int bus; struct usb_xfer_queue done_q; } ;
struct TYPE_2__ {scalar_t__ transferring; } ;
struct usb_xfer {struct usb_xfer_root* xroot; scalar_t__ wait_queue; TYPE_1__ flags_int; } ;


 int MA_OWNED ;
 int USB_BUS_LOCK (int ) ;
 int USB_BUS_UNLOCK (int ) ;
 int USB_XFER_LOCK_ASSERT (struct usb_xfer*,int ) ;

uint8_t
usbd_transfer_pending(struct usb_xfer *xfer)
{
 struct usb_xfer_root *info;
 struct usb_xfer_queue *pq;

 if (xfer == ((void*)0)) {

  return (0);
 }
 USB_XFER_LOCK_ASSERT(xfer, MA_OWNED);

 if (xfer->flags_int.transferring) {

  return (1);
 }
 USB_BUS_LOCK(xfer->xroot->bus);
 if (xfer->wait_queue) {

  USB_BUS_UNLOCK(xfer->xroot->bus);
  return (1);
 }
 info = xfer->xroot;
 pq = &info->done_q;

 if (pq->curr == xfer) {

  USB_BUS_UNLOCK(xfer->xroot->bus);
  return (1);
 }

 USB_BUS_UNLOCK(xfer->xroot->bus);
 return (0);
}
