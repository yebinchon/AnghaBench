
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {size_t curr_dma_set; scalar_t__ short_frames_ok; } ;
struct usb_xfer {TYPE_2__* endpoint; scalar_t__ td_transfer_cache; TYPE_1__ flags_int; TYPE_3__** qh_start; } ;
struct TYPE_6__ {int ed_tailp; int ed_headp; int page_cache; } ;
typedef TYPE_3__ ohci_ed_t ;
struct TYPE_5__ {int toggle_next; int * methods; } ;


 int DPRINTFN (int,char*,struct usb_xfer*) ;
 int OHCI_HALTED ;
 int OHCI_TOGGLECARRY ;
 int le32toh (int ) ;
 int ohci_check_transfer_sub (struct usb_xfer*) ;
 int ohci_device_isoc_methods ;
 int ohci_isoc_done (struct usb_xfer*) ;
 int ohci_non_isoc_done (struct usb_xfer*) ;
 int usb_pc_cpu_invalidate (int ) ;

__attribute__((used)) static uint8_t
ohci_check_transfer(struct usb_xfer *xfer)
{
 ohci_ed_t *ed;
 uint32_t ed_headp;
 uint32_t ed_tailp;

 DPRINTFN(13, "xfer=%p checking transfer\n", xfer);

 ed = xfer->qh_start[xfer->flags_int.curr_dma_set];

 usb_pc_cpu_invalidate(ed->page_cache);
 ed_headp = le32toh(ed->ed_headp);
 ed_tailp = le32toh(ed->ed_tailp);

 if ((ed_headp & OHCI_HALTED) ||
     (((ed_headp ^ ed_tailp) & (~0xF)) == 0)) {
  if (xfer->endpoint->methods == &ohci_device_isoc_methods) {

   ohci_isoc_done(xfer);
  } else {
   if (xfer->flags_int.short_frames_ok) {
    ohci_check_transfer_sub(xfer);
    if (xfer->td_transfer_cache) {

     return (0);
    }
   }

   if (ed_headp & OHCI_TOGGLECARRY) {
    xfer->endpoint->toggle_next = 1;
   } else {
    xfer->endpoint->toggle_next = 0;
   }


   ohci_non_isoc_done(xfer);
  }
  return (1);
 }
 DPRINTFN(13, "xfer=%p is still active\n", xfer);
 return (0);
}
