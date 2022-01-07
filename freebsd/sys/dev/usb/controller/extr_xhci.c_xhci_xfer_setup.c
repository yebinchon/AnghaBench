
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct xhci_td {struct usb_page_cache* page_cache; void* obj_next; int td_self; } ;
struct TYPE_2__ {int bdma_enable; size_t curr_dma_set; scalar_t__ control_xfr; scalar_t__ isochronous_xfr; } ;
struct usb_xfer {int nframes; int max_data_length; int max_hc_frame_size; TYPE_1__ flags_int; void** td_start; } ;
struct usb_setup_params {int hc_max_packet_size; int hc_max_packet_count; scalar_t__ buf; scalar_t__ err; int hc_max_frame_size; struct usb_xfer* curr_xfer; } ;
struct usb_page_search {int physaddr; struct xhci_td* buffer; } ;
struct usb_page_cache {int dummy; } ;


 scalar_t__ USB_ERR_NOMEM ;
 int XHCI_TD_ALIGN ;
 int XHCI_TD_PAYLOAD_MAX ;
 int usb_pc_cpu_flush (struct usb_page_cache*) ;
 int usbd_get_page (struct usb_page_cache*,int ,struct usb_page_search*) ;
 int usbd_transfer_setup_sub (struct usb_setup_params*) ;
 scalar_t__ usbd_transfer_setup_sub_malloc (struct usb_setup_params*,struct usb_page_cache**,int,int ,int) ;

__attribute__((used)) static void
xhci_xfer_setup(struct usb_setup_params *parm)
{
 struct usb_page_search page_info;
 struct usb_page_cache *pc;
 struct usb_xfer *xfer;
 void *last_obj;
 uint32_t ntd;
 uint32_t n;

 xfer = parm->curr_xfer;
 parm->hc_max_packet_size = 0x400;
 parm->hc_max_packet_count = 16 * 3;
 parm->hc_max_frame_size = XHCI_TD_PAYLOAD_MAX;

 xfer->flags_int.bdma_enable = 1;

 usbd_transfer_setup_sub(parm);

 if (xfer->flags_int.isochronous_xfr) {
  ntd = ((1 * xfer->nframes)
      + (xfer->max_data_length / xfer->max_hc_frame_size));
 } else if (xfer->flags_int.control_xfr) {
  ntd = ((2 * xfer->nframes) + 1
      + (xfer->max_data_length / xfer->max_hc_frame_size));
 } else {
  ntd = ((2 * xfer->nframes)
      + (xfer->max_data_length / xfer->max_hc_frame_size));
 }

alloc_dma_set:

 if (parm->err)
  return;




 last_obj = ((void*)0);

 if (usbd_transfer_setup_sub_malloc(
     parm, &pc, sizeof(struct xhci_td),
     XHCI_TD_ALIGN, ntd)) {
  parm->err = USB_ERR_NOMEM;
  return;
 }
 if (parm->buf) {
  for (n = 0; n != ntd; n++) {
   struct xhci_td *td;

   usbd_get_page(pc + n, 0, &page_info);

   td = page_info.buffer;


   td->td_self = page_info.physaddr;
   td->obj_next = last_obj;
   td->page_cache = pc + n;

   last_obj = td;

   usb_pc_cpu_flush(pc + n);
  }
 }
 xfer->td_start[xfer->flags_int.curr_dma_set] = last_obj;

 if (!xfer->flags_int.curr_dma_set) {
  xfer->flags_int.curr_dma_set = 1;
  goto alloc_dma_set;
 }
}
