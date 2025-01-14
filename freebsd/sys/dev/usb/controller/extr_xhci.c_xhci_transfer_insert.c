
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t usb_stream_t ;
typedef int usb_error_t ;
typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
struct xhci_trb {void* dwTrb3; void* dwTrb2; void* qwTrb0; } ;
struct xhci_td {int ntrb; scalar_t__ td_self; int page_cache; struct xhci_trb* td_trb; } ;
struct xhci_softc {int * sc_config_msg; int sc_bus; } ;
struct xhci_endpoint_ext {scalar_t__ physaddr; scalar_t__* trb_used; scalar_t__ trb_ep_maxp; int trb_halted; scalar_t__ trb_running; scalar_t__* trb_index; struct usb_xfer** xfer; int page_cache; struct xhci_trb* trb; } ;
struct TYPE_7__ {int bandwidth_reclaimed; scalar_t__ control_xfr; } ;
struct usb_xfer {size_t stream_id; TYPE_3__ flags_int; scalar_t__ qh_pos; TYPE_2__* xroot; TYPE_1__* endpoint; struct xhci_td* td_transfer_last; struct xhci_td* td_transfer_first; } ;
struct TYPE_8__ {int bmAttributes; scalar_t__* wMaxPacketSize; } ;
struct TYPE_6__ {int bus; int udev; } ;
struct TYPE_5__ {TYPE_4__* edesc; } ;


 int DPRINTF (char*,scalar_t__) ;
 int DPRINTFN (int,char*) ;


 int UE_XFERTYPE ;
 int USB_BUS_CONTROL_XFER_PROC (int *) ;
 int USB_ERR_NOMEM ;
 struct xhci_softc* XHCI_BUS2SC (int ) ;
 int XHCI_MAX_TRANSFERS ;
 int XHCI_TRB_2_IRQ_SET (int ) ;
 int XHCI_TRB_3_CYCLE_BIT ;
 int XHCI_TRB_3_IOC_BIT ;
 int XHCI_TRB_3_TYPE_SET (int ) ;
 int XHCI_TRB_TYPE_LINK ;
 void* htole32 (int) ;
 void* htole64 (scalar_t__) ;
 int usb_pc_cpu_flush (int ) ;
 int usb_proc_msignal (int ,int *,int *) ;
 int xhci_dump_trb (struct xhci_trb*) ;
 int xhci_endpoint_doorbell (struct usb_xfer*) ;
 struct xhci_endpoint_ext* xhci_get_endpoint_ext (int ,TYPE_4__*) ;

__attribute__((used)) static usb_error_t
xhci_transfer_insert(struct usb_xfer *xfer)
{
 struct xhci_td *td_first;
 struct xhci_td *td_last;
 struct xhci_trb *trb_link;
 struct xhci_endpoint_ext *pepext;
 uint64_t addr;
 usb_stream_t id;
 uint8_t i;
 uint8_t inext;
 uint8_t trb_limit;

 DPRINTFN(8, "\n");

 id = xfer->stream_id;


 if (xfer->flags_int.bandwidth_reclaimed) {
  DPRINTFN(8, "Already in schedule\n");
  return (0);
 }

 pepext = xhci_get_endpoint_ext(xfer->xroot->udev,
     xfer->endpoint->edesc);

 td_first = xfer->td_transfer_first;
 td_last = xfer->td_transfer_last;
 addr = pepext->physaddr;

 switch (xfer->endpoint->edesc->bmAttributes & UE_XFERTYPE) {
 case 129:
 case 128:

  trb_limit = 1;
  break;
 default:

  trb_limit = (XHCI_MAX_TRANSFERS - 2);
  break;
 }

 if (pepext->trb_used[id] >= trb_limit) {
  DPRINTFN(8, "Too many TDs queued.\n");
  return (USB_ERR_NOMEM);
 }


 if (xfer->flags_int.control_xfr != 0 &&
     pepext->trb_ep_maxp != xfer->endpoint->edesc->wMaxPacketSize[0]) {

  DPRINTFN(8, "Reconfigure control endpoint\n");


  pepext->trb_halted = 1;
  pepext->trb_running = 0;
 }


 if (pepext->trb_running == 0) {
  struct xhci_softc *sc = XHCI_BUS2SC(xfer->xroot->bus);

  DPRINTFN(8, "Not running\n");


  (void)usb_proc_msignal(USB_BUS_CONTROL_XFER_PROC(&sc->sc_bus),
      &sc->sc_config_msg[0], &sc->sc_config_msg[1]);
  return (0);
 }

 pepext->trb_used[id]++;


 i = pepext->trb_index[id];


 inext = (i + 1);


 if (inext >= (XHCI_MAX_TRANSFERS - 1))
  inext = 0;


 pepext->trb_index[id] = inext;


 i += id * XHCI_MAX_TRANSFERS;
 inext += id * XHCI_MAX_TRANSFERS;


 addr += (inext * sizeof(struct xhci_trb));


 trb_link = td_last->td_trb + td_last->ntrb;


 trb_link->qwTrb0 = htole64(addr);
 trb_link->dwTrb2 = htole32(XHCI_TRB_2_IRQ_SET(0));
 trb_link->dwTrb3 = htole32(XHCI_TRB_3_IOC_BIT |
     XHCI_TRB_3_CYCLE_BIT |
     XHCI_TRB_3_TYPE_SET(XHCI_TRB_TYPE_LINK));




 usb_pc_cpu_flush(td_last->page_cache);



 pepext->trb[inext].qwTrb0 = 0;
 pepext->trb[inext].dwTrb2 = 0;
 pepext->trb[inext].dwTrb3 = 0;



 pepext->trb[i].qwTrb0 = htole64((uint64_t)td_first->td_self);
 pepext->trb[i].dwTrb2 = htole32(XHCI_TRB_2_IRQ_SET(0));




 usb_pc_cpu_flush(pepext->page_cache);



 pepext->trb[i].dwTrb3 = htole32(XHCI_TRB_3_CYCLE_BIT |
     XHCI_TRB_3_TYPE_SET(XHCI_TRB_TYPE_LINK));

 usb_pc_cpu_flush(pepext->page_cache);

 DPRINTF("qh_pos = %u\n", i);

 pepext->xfer[i] = xfer;

 xfer->qh_pos = i;

 xfer->flags_int.bandwidth_reclaimed = 1;

 xhci_endpoint_doorbell(xfer);

 return (0);
}
