
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ can_cancel_immed; } ;
struct usb_xfer {int timeout; TYPE_1__ flags_int; } ;


 int ehci_transfer_intr_enqueue (struct usb_xfer*) ;

__attribute__((used)) static void
ehci_device_isoc_fs_start(struct usb_xfer *xfer)
{





 xfer->flags_int.can_cancel_immed = 0;


 if (xfer->timeout == 0)
  xfer->timeout = 500;


 ehci_transfer_intr_enqueue(xfer);
}
