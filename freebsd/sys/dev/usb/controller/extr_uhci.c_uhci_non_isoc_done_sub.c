
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_6__ {scalar_t__ len; struct TYPE_6__* alt_next; struct TYPE_6__* obj_next; scalar_t__ fix_pc; int td_token; int td_status; scalar_t__ page_cache; } ;
typedef TYPE_3__ uhci_td_t ;
struct TYPE_4__ {scalar_t__ short_frames_ok; } ;
struct usb_xfer {size_t aframes; size_t nframes; void* td_transfer_last; int endpointno; int address; TYPE_2__* endpoint; TYPE_3__* td_transfer_cache; TYPE_1__ flags_int; int * frlengths; scalar_t__ frbuffers; } ;
struct usb_page_search {int buffer; } ;
struct TYPE_5__ {int toggle_next; } ;


 int DPRINTF (char*,scalar_t__,scalar_t__) ;
 int DPRINTFN (int,char*,int ,int ,size_t,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ;
 int UHCI_TD_ACTIVE ;
 int UHCI_TD_BABBLE ;
 int UHCI_TD_BITSTUFF ;
 int UHCI_TD_CRCTO ;
 int UHCI_TD_DBUFFER ;
 int UHCI_TD_ERROR ;
 scalar_t__ UHCI_TD_GET_ACTLEN (int) ;
 scalar_t__ UHCI_TD_GET_ERRCNT (int) ;
 int UHCI_TD_IOC ;
 int UHCI_TD_IOS ;
 int UHCI_TD_LS ;
 int UHCI_TD_NAK ;
 int UHCI_TD_SET_DT (int) ;
 int UHCI_TD_SPD ;
 int UHCI_TD_STALLED ;
 int USB_ERR_IOERROR ;
 int USB_ERR_NORMAL_COMPLETION ;
 int USB_ERR_STALLED ;
 int le32toh (int ) ;
 int usb_pc_cpu_invalidate (scalar_t__) ;
 int usbd_copy_in (scalar_t__,int ,int ,scalar_t__) ;
 int usbd_get_page (scalar_t__,int ,struct usb_page_search*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,size_t,int ) ;

__attribute__((used)) static usb_error_t
uhci_non_isoc_done_sub(struct usb_xfer *xfer)
{
 struct usb_page_search res;
 uhci_td_t *td;
 uhci_td_t *td_alt_next;
 uint32_t status;
 uint32_t token;
 uint16_t len;

 td = xfer->td_transfer_cache;
 td_alt_next = td->alt_next;

 if (xfer->aframes != xfer->nframes) {
  usbd_xfer_set_frame_len(xfer, xfer->aframes, 0);
 }
 while (1) {

  usb_pc_cpu_invalidate(td->page_cache);
  status = le32toh(td->td_status);
  token = le32toh(td->td_token);






  len = UHCI_TD_GET_ACTLEN(status);
  if (len > td->len) {

   DPRINTF("Invalid status length, "
       "0x%04x/0x%04x bytes\n", len, td->len);
   status |= UHCI_TD_STALLED;

  } else if ((xfer->aframes != xfer->nframes) && (len > 0)) {

   if (td->fix_pc) {

    usbd_get_page(td->fix_pc, 0, &res);






    usb_pc_cpu_invalidate(td->fix_pc);

    usbd_copy_in(xfer->frbuffers + xfer->aframes,
        xfer->frlengths[xfer->aframes], res.buffer, len);
   }


   xfer->frlengths[xfer->aframes] += len;
  }

  if (((void *)td) == xfer->td_transfer_last) {
   td = ((void*)0);
   break;
  }
  if (status & UHCI_TD_STALLED) {

   td = ((void*)0);
   break;
  }

  if (len != td->len) {
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



 xfer->endpoint->toggle_next = (token & UHCI_TD_SET_DT(1)) ? 0 : 1;
 if (status & UHCI_TD_STALLED) {

  if (UHCI_TD_GET_ERRCNT(status) == 0)
   return (USB_ERR_IOERROR);
  return (USB_ERR_STALLED);
 }
 return (USB_ERR_NORMAL_COMPLETION);
}
