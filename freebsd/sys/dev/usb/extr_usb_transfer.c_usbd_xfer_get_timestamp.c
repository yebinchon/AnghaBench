
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct usb_xfer {int isoc_time_complete; } ;



uint16_t
usbd_xfer_get_timestamp(struct usb_xfer *xfer)
{
 return (xfer->isoc_time_complete);
}
