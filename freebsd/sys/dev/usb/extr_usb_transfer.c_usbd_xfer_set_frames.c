
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_frcount_t ;
struct usb_xfer {int nframes; } ;



void
usbd_xfer_set_frames(struct usb_xfer *xfer, usb_frcount_t n)
{
 xfer->nframes = n;
}
