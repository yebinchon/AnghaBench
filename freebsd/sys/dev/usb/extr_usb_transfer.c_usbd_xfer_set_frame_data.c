
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_frlength_t ;
typedef size_t usb_frcount_t ;
struct usb_xfer {size_t max_frame_count; TYPE_1__* frbuffers; } ;
struct TYPE_2__ {void* buffer; } ;


 int KASSERT (int,char*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,size_t,int ) ;

void
usbd_xfer_set_frame_data(struct usb_xfer *xfer, usb_frcount_t frindex,
    void *ptr, usb_frlength_t len)
{
 KASSERT(frindex < xfer->max_frame_count, ("frame index overflow"));


 xfer->frbuffers[frindex].buffer = ptr;
 usbd_xfer_set_frame_len(xfer, frindex, len);
}
