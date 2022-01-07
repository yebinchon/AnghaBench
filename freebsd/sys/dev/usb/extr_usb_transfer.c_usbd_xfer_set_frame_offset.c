
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_frlength_t ;
typedef size_t usb_frcount_t ;
struct TYPE_3__ {int ext_buffer; } ;
struct usb_xfer {size_t max_frame_count; int local_buffer; TYPE_2__* frbuffers; TYPE_1__ flags; } ;
struct TYPE_4__ {int buffer; } ;


 int KASSERT (int,char*) ;
 int USB_ADD_BYTES (int ,int ) ;

void
usbd_xfer_set_frame_offset(struct usb_xfer *xfer, usb_frlength_t offset,
    usb_frcount_t frindex)
{
 KASSERT(!xfer->flags.ext_buffer, ("Cannot offset data frame "
     "when the USB buffer is external\n"));
 KASSERT(frindex < xfer->max_frame_count, ("frame index overflow"));


 xfer->frbuffers[frindex].buffer =
     USB_ADD_BYTES(xfer->local_buffer, offset);
}
