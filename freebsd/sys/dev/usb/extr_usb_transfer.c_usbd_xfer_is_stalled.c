
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_xfer {TYPE_1__* endpoint; } ;
struct TYPE_2__ {int is_stalled; } ;



int
usbd_xfer_is_stalled(struct usb_xfer *xfer)
{
 return (xfer->endpoint->is_stalled);
}
