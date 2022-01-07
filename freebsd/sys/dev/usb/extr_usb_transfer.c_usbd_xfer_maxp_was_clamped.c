
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int maxp_was_clamped; } ;
struct usb_xfer {TYPE_1__ flags_int; } ;



uint8_t
usbd_xfer_maxp_was_clamped(struct usb_xfer *xfer)
{
 return (xfer->flags_int.maxp_was_clamped);
}
