
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ isochronous_xfr; } ;
struct usb_xfer {TYPE_3__* xroot; TYPE_1__ flags_int; } ;
struct TYPE_6__ {TYPE_2__* udev; } ;
struct TYPE_5__ {int speed; } ;



 int usb_hs_bandwidth_alloc (struct usb_xfer*) ;

__attribute__((used)) static void
xhci_device_generic_open(struct usb_xfer *xfer)
{
 if (xfer->flags_int.isochronous_xfr) {
  switch (xfer->xroot->udev->speed) {
  case 128:
   break;
  default:
   usb_hs_bandwidth_alloc(xfer);
   break;
  }
 }
}
