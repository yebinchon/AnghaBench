
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_xfer {scalar_t__ timeout; TYPE_2__* xroot; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {int intr_q; } ;


 int DPRINTFN (int,char*) ;
 int octusb_timeout ;
 scalar_t__ octusb_xfer_do_fifo (struct usb_xfer*) ;
 int usbd_transfer_enqueue (int *,struct usb_xfer*) ;
 int usbd_transfer_timeout_ms (struct usb_xfer*,int *,scalar_t__) ;

__attribute__((used)) static void
octusb_start_standard_chain(struct usb_xfer *xfer)
{
 DPRINTFN(8, "\n");


 if (octusb_xfer_do_fifo(xfer)) {


  usbd_transfer_enqueue(&xfer->xroot->bus->intr_q, xfer);


  if (xfer->timeout != 0) {
   usbd_transfer_timeout_ms(xfer,
       &octusb_timeout, xfer->timeout);
  }
 }
}
