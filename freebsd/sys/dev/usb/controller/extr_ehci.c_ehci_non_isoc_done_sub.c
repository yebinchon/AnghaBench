
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_5__ {scalar_t__ short_frames_ok; } ;
struct usb_xfer {size_t aframes; size_t nframes; void* td_transfer_last; TYPE_3__* xroot; int endpointno; int address; TYPE_4__* td_transfer_cache; TYPE_1__ flags_int; int * frlengths; } ;
typedef int ehci_softc_t ;
struct TYPE_8__ {scalar_t__ len; struct TYPE_8__* alt_next; struct TYPE_8__* obj_next; int qtd_status; int page_cache; } ;
typedef TYPE_4__ ehci_qtd_t ;
struct TYPE_7__ {TYPE_2__* udev; int bus; } ;
struct TYPE_6__ {scalar_t__ address; int * parent_hs_hub; } ;


 int DPRINTF (char*,scalar_t__,scalar_t__) ;
 int DPRINTFN (int,char*,int ,int ,size_t,char*,char*,char*,char*,char*,char*,char*,char*) ;
 int * EHCI_BUS2SC (int ) ;
 int EHCI_QTD_ACTIVE ;
 int EHCI_QTD_BABBLE ;
 int EHCI_QTD_BUFERR ;
 scalar_t__ EHCI_QTD_GET_BYTES (int) ;
 scalar_t__ EHCI_QTD_GET_CERR (int) ;
 int EHCI_QTD_HALTED ;
 int EHCI_QTD_MISSEDMICRO ;
 int EHCI_QTD_PINGSTATE ;
 int EHCI_QTD_SPLITXSTATE ;
 int EHCI_QTD_STATERRS ;
 int EHCI_QTD_XACTERR ;
 int USB_ERR_IOERROR ;
 int USB_ERR_NORMAL_COMPLETION ;
 int USB_ERR_STALLED ;
 int ehci_data_toggle_update (struct usb_xfer*,scalar_t__,scalar_t__) ;
 int hc32toh (int *,int ) ;
 int usb_pc_cpu_invalidate (int ) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,size_t,int ) ;

__attribute__((used)) static usb_error_t
ehci_non_isoc_done_sub(struct usb_xfer *xfer)
{
 ehci_softc_t *sc = EHCI_BUS2SC(xfer->xroot->bus);
 ehci_qtd_t *td;
 ehci_qtd_t *td_alt_next;
 uint32_t status;
 uint16_t len;

 td = xfer->td_transfer_cache;
 td_alt_next = td->alt_next;

 if (xfer->aframes != xfer->nframes) {
  usbd_xfer_set_frame_len(xfer, xfer->aframes, 0);
 }
 while (1) {

  usb_pc_cpu_invalidate(td->page_cache);
  status = hc32toh(sc, td->qtd_status);

  len = EHCI_QTD_GET_BYTES(status);





  if (len > td->len) {

   DPRINTF("Invalid status length, "
       "0x%04x/0x%04x bytes\n", len, td->len);
   status |= EHCI_QTD_HALTED;
  } else if (xfer->aframes != xfer->nframes) {
   xfer->frlengths[xfer->aframes] += td->len - len;

   ehci_data_toggle_update(xfer, td->len - len, td->len);
  }


  if (((void *)td) == xfer->td_transfer_last) {
   td = ((void*)0);
   break;
  }

  if (status & EHCI_QTD_HALTED) {

   td = ((void*)0);
   break;
  }

  if (len > 0) {
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
 if (status & EHCI_QTD_HALTED) {
  if ((xfer->xroot->udev->parent_hs_hub != ((void*)0)) ||
      (xfer->xroot->udev->address != 0)) {

   if (EHCI_QTD_GET_CERR(status) == 0)
    return (USB_ERR_IOERROR);
  }
  return (USB_ERR_STALLED);
 }
 return (USB_ERR_NORMAL_COMPLETION);
}
