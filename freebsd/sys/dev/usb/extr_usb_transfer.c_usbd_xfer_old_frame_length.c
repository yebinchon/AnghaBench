
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_frlength_t ;
typedef size_t usb_frcount_t ;
struct usb_xfer {size_t max_frame_count; int * frlengths; } ;


 int KASSERT (int,char*) ;

usb_frlength_t
usbd_xfer_old_frame_length(struct usb_xfer *xfer, usb_frcount_t frindex)
{
 KASSERT(frindex < xfer->max_frame_count, ("frame index overflow"));

 return (xfer->frlengths[frindex + xfer->max_frame_count]);
}
