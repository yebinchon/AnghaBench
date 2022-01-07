
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ short_frames_ok; } ;
struct usb_xfer {size_t aframes; size_t nframes; int* frlengths; void* td_transfer_last; TYPE_2__* td_transfer_cache; TYPE_1__ flags_int; } ;
struct TYPE_4__ {int len; struct TYPE_4__* alt_next; struct TYPE_4__* obj_next; int td_be; int td_flags; int td_cbp; int page_cache; } ;
typedef TYPE_2__ ohci_td_t ;


 int DPRINTFN (int,char*,int,int ) ;
 int OHCI_CC_STALL ;
 scalar_t__ OHCI_PAGE (int) ;
 scalar_t__ OHCI_PAGE_OFFSET (int) ;
 int OHCI_PAGE_SIZE ;
 int OHCI_TD_GET_CC (int) ;
 int USB_ERR_IOERROR ;
 int USB_ERR_NORMAL_COMPLETION ;
 int USB_ERR_STALLED ;
 int le32toh (int ) ;
 int * ohci_cc_strs ;
 int usb_pc_cpu_invalidate (int ) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,size_t,int ) ;

__attribute__((used)) static usb_error_t
ohci_non_isoc_done_sub(struct usb_xfer *xfer)
{
 ohci_td_t *td;
 ohci_td_t *td_alt_next;
 uint32_t temp;
 uint32_t phy_start;
 uint32_t phy_end;
 uint32_t td_flags;
 uint16_t cc;

 td = xfer->td_transfer_cache;
 td_alt_next = td->alt_next;
 td_flags = 0;

 if (xfer->aframes != xfer->nframes) {
  usbd_xfer_set_frame_len(xfer, xfer->aframes, 0);
 }
 while (1) {

  usb_pc_cpu_invalidate(td->page_cache);
  phy_start = le32toh(td->td_cbp);
  td_flags = le32toh(td->td_flags);
  cc = OHCI_TD_GET_CC(td_flags);

  if (phy_start) {




   phy_end = le32toh(td->td_be);
   temp = (OHCI_PAGE(phy_start ^ phy_end) ?
       (OHCI_PAGE_SIZE + 1) : 0x0001);
   temp += OHCI_PAGE_OFFSET(phy_end);
   temp -= OHCI_PAGE_OFFSET(phy_start);

   if (temp > td->len) {

    cc = OHCI_CC_STALL;
   } else if (xfer->aframes != xfer->nframes) {




    xfer->frlengths[xfer->aframes] += td->len - temp;
   }
  } else {
   if (xfer->aframes != xfer->nframes) {

    xfer->frlengths[xfer->aframes] += td->len;
   }
  }

  if (((void *)td) == xfer->td_transfer_last) {
   td = ((void*)0);
   break;
  }

  if (cc) {

   td = ((void*)0);
   break;
  }

  if (phy_start) {
   if (xfer->flags_int.short_frames_ok) {

    td = td->alt_next;
   } else {

    td = ((void*)0);
   }
   break;
  }
  td = td->obj_next;

  if (td->alt_next != td_alt_next) {

   break;
  }
 }



 xfer->td_transfer_cache = td;

 DPRINTFN(16, "error cc=%d (%s)\n",
     cc, ohci_cc_strs[cc]);

 return ((cc == 0) ? USB_ERR_NORMAL_COMPLETION :
     (cc == OHCI_CC_STALL) ? USB_ERR_STALLED : USB_ERR_IOERROR);
}
