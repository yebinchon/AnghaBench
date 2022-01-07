
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_frcount_t ;
struct usb_xfer {int max_frame_count; } ;



usb_frcount_t
usbd_xfer_max_frames(struct usb_xfer *xfer)
{
 return (xfer->max_frame_count);
}
