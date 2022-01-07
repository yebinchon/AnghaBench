
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int interval; } ;



void
usbd_xfer_set_interval(struct usb_xfer *xfer, int i)
{
 xfer->interval = i;
}
