
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int max_frame_size; int buf_fixup; scalar_t__ frbuffers; } ;
struct uhci_mem_layout {int max_frame_size; scalar_t__ buf_offset; int fix_pc; scalar_t__ buf_pc; } ;



__attribute__((used)) static void
uhci_mem_layout_init(struct uhci_mem_layout *ml, struct usb_xfer *xfer)
{
 ml->buf_pc = xfer->frbuffers + 0;
 ml->fix_pc = xfer->buf_fixup;

 ml->buf_offset = 0;

 ml->max_frame_size = xfer->max_frame_size;
}
