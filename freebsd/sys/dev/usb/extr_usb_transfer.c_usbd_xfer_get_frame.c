
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t usb_frcount_t ;
struct usb_xfer {size_t max_frame_count; struct usb_page_cache* frbuffers; } ;
struct usb_page_cache {int dummy; } ;


 int KASSERT (int,char*) ;

struct usb_page_cache *
usbd_xfer_get_frame(struct usb_xfer *xfer, usb_frcount_t frindex)
{
 KASSERT(frindex < xfer->max_frame_count, ("frame index overflow"));

 return (&xfer->frbuffers[frindex]);
}
