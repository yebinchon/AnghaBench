
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct xhci_trb {int dwTrb3; int dwTrb2; int qwTrb0; } ;
struct xhci_td {scalar_t__ td_self; int ntrb; int len; int remainder; struct xhci_td* obj_next; struct xhci_td* alt_next; int page_cache; scalar_t__ status; TYPE_3__* td_trb; } ;
struct TYPE_6__ {TYPE_1__* devs; } ;
struct xhci_softc {scalar_t__ sc_noslot; TYPE_2__ sc_hw; } ;
struct xhci_endpoint_ext {scalar_t__ trb_ep_mode; struct usb_xfer** xfer; } ;
struct TYPE_8__ {scalar_t__ control_xfr; scalar_t__ isochronous_xfr; scalar_t__ short_frames_ok; } ;
struct usb_xfer {void* td_transfer_last; struct xhci_td* td_transfer_cache; TYPE_4__ flags_int; } ;
typedef scalar_t__ int64_t ;
struct TYPE_7__ {int dwTrb2; } ;
struct TYPE_5__ {struct xhci_endpoint_ext* endp; } ;


 int DPRINTF (char*,...) ;
 int DPRINTFN (int,char*,int,...) ;
 scalar_t__ USB_EP_MODE_STREAMS ;
 scalar_t__ XHCI_MAX_ENDPOINTS ;
 int XHCI_MAX_STREAMS ;
 int XHCI_MAX_TRANSFERS ;
 scalar_t__ XHCI_TRB_2_BYTES_GET (int) ;
 scalar_t__ XHCI_TRB_2_ERROR_GET (int) ;
 int XHCI_TRB_2_REM_GET (int) ;
 scalar_t__ XHCI_TRB_3_EP_GET (int) ;
 scalar_t__ XHCI_TRB_3_SLOT_GET (int) ;
 scalar_t__ XHCI_TRB_ERROR_SHORT_PKT ;
 scalar_t__ XHCI_TRB_ERROR_SUCCESS ;
 int le32toh (int ) ;
 scalar_t__ le64toh (int ) ;
 int usb_pc_cpu_flush (int ) ;
 int usb_pc_cpu_invalidate (int ) ;
 int xhci_activate_transfer (struct usb_xfer*) ;
 int xhci_generic_done (struct usb_xfer*) ;
 int xhci_skip_transfer (struct usb_xfer*) ;

__attribute__((used)) static void
xhci_check_transfer(struct xhci_softc *sc, struct xhci_trb *trb)
{
 struct xhci_endpoint_ext *pepext;
 int64_t offset;
 uint64_t td_event;
 uint32_t temp;
 uint32_t remainder;
 uint16_t stream_id = 0;
 uint16_t i;
 uint8_t status;
 uint8_t halted;
 uint8_t epno;
 uint8_t index;


 td_event = le64toh(trb->qwTrb0);
 temp = le32toh(trb->dwTrb2);

 remainder = XHCI_TRB_2_REM_GET(temp);
 status = XHCI_TRB_2_ERROR_GET(temp);

 temp = le32toh(trb->dwTrb3);
 epno = XHCI_TRB_3_EP_GET(temp);
 index = XHCI_TRB_3_SLOT_GET(temp);


 halted = (status != XHCI_TRB_ERROR_SHORT_PKT &&
     status != XHCI_TRB_ERROR_SUCCESS);

 DPRINTF("slot=%u epno=%u remainder=%u status=%u\n",
     index, epno, remainder, status);

 if (index > sc->sc_noslot) {
  DPRINTF("Invalid slot.\n");
  return;
 }

 if ((epno == 0) || (epno >= XHCI_MAX_ENDPOINTS)) {
  DPRINTF("Invalid endpoint.\n");
  return;
 }

 pepext = &sc->sc_hw.devs[index].endp[epno];


 for (i = 0;; i++) {
  struct usb_xfer *xfer;
  struct xhci_td *td;

  if (i == (XHCI_MAX_TRANSFERS - 1)) {
   if (pepext->trb_ep_mode != USB_EP_MODE_STREAMS ||
       stream_id == (XHCI_MAX_STREAMS - 1))
    break;
   stream_id++;
   i = 0;
   DPRINTFN(5, "stream_id=%u\n", stream_id);
  }

  xfer = pepext->xfer[i + (XHCI_MAX_TRANSFERS * stream_id)];
  if (xfer == ((void*)0))
   continue;

  td = xfer->td_transfer_cache;

  DPRINTFN(5, "Checking if 0x%016llx == (0x%016llx .. 0x%016llx)\n",
   (long long)td_event,
   (long long)td->td_self,
   (long long)td->td_self + sizeof(td->td_trb));
  offset = td_event - td->td_self;

  if (offset >= 0 &&
      offset < (int64_t)sizeof(td->td_trb)) {

   usb_pc_cpu_invalidate(td->page_cache);


   for (i = (offset / 16) + 1; i < td->ntrb; i++) {
    temp = le32toh(td->td_trb[i].dwTrb2);
    remainder += XHCI_TRB_2_BYTES_GET(temp);
   }

   DPRINTFN(5, "New remainder: %u\n", remainder);


   if (xfer->flags_int.isochronous_xfr) {
    if (halted) {
     halted = 0;
     status = XHCI_TRB_ERROR_SUCCESS;
     remainder = td->len;
    }
   }


   td->remainder = remainder;
   td->status = status;

   usb_pc_cpu_flush(td->page_cache);





   if (((void *)td) == xfer->td_transfer_last) {
    DPRINTF("TD is last\n");
    xhci_generic_done(xfer);
    break;
   }





   if (halted) {
    DPRINTF("TD has I/O error\n");
    xhci_generic_done(xfer);
    break;
   }





   if (td->remainder > 0) {
    if (td->alt_next == ((void*)0)) {
     DPRINTF(
         "short TD has no alternate next\n");
     xhci_generic_done(xfer);
     break;
    }
    DPRINTF("TD has short pkt\n");
    if (xfer->flags_int.short_frames_ok ||
        xfer->flags_int.isochronous_xfr ||
        xfer->flags_int.control_xfr) {

     xfer->td_transfer_cache = td->alt_next;
     xhci_activate_transfer(xfer);
     break;
    }
    xhci_skip_transfer(xfer);
    xhci_generic_done(xfer);
    break;
   }




   DPRINTF("Following next TD\n");
   xfer->td_transfer_cache = td->obj_next;
   xhci_activate_transfer(xfer);
   break;
  }
 }
}
