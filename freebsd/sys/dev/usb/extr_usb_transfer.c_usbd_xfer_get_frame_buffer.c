
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t usb_frcount_t ;
struct usb_xfer {size_t max_frame_count; int * frbuffers; } ;
struct usb_page_search {void* buffer; } ;


 int KASSERT (int,char*) ;
 int usbd_get_page (int *,int ,struct usb_page_search*) ;

void *
usbd_xfer_get_frame_buffer(struct usb_xfer *xfer, usb_frcount_t frindex)
{
 struct usb_page_search page_info;

 KASSERT(frindex < xfer->max_frame_count, ("frame index overflow"));

 usbd_get_page(&xfer->frbuffers[frindex], 0, &page_info);
 return (page_info.buffer);
}
