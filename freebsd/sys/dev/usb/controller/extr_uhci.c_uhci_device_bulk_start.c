
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int td_self; } ;
typedef TYPE_5__ uhci_td_t ;
struct TYPE_17__ {int sc_bulk_p_last; } ;
typedef TYPE_6__ uhci_softc_t ;
struct TYPE_18__ {int page_cache; int qh_e_next; TYPE_5__* e_next; } ;
typedef TYPE_7__ uhci_qh_t ;
struct TYPE_14__ {size_t curr_dma_set; int bandwidth_reclaimed; } ;
struct usb_xfer {TYPE_3__ flags_int; TYPE_4__* xroot; TYPE_7__** qh_start; } ;
struct TYPE_15__ {TYPE_2__* udev; int bus; } ;
struct TYPE_12__ {scalar_t__ self_suspended; } ;
struct TYPE_13__ {TYPE_1__ flags; } ;


 int UHCI_APPEND_QH (TYPE_7__*,int ) ;
 TYPE_6__* UHCI_BUS2SC (int ) ;
 int uhci_add_loop (TYPE_6__*) ;
 TYPE_5__* uhci_setup_standard_chain (struct usb_xfer*) ;
 int uhci_transfer_intr_enqueue (struct usb_xfer*) ;
 int usb_pc_cpu_flush (int ) ;

__attribute__((used)) static void
uhci_device_bulk_start(struct usb_xfer *xfer)
{
 uhci_softc_t *sc = UHCI_BUS2SC(xfer->xroot->bus);
 uhci_td_t *td;
 uhci_qh_t *qh;


 td = uhci_setup_standard_chain(xfer);


 qh = xfer->qh_start[xfer->flags_int.curr_dma_set];

 qh->e_next = td;
 qh->qh_e_next = td->td_self;

 if (xfer->xroot->udev->flags.self_suspended == 0) {
  UHCI_APPEND_QH(qh, sc->sc_bulk_p_last);
  uhci_add_loop(sc);
  xfer->flags_int.bandwidth_reclaimed = 1;
 } else {
  usb_pc_cpu_flush(qh->page_cache);
 }


 uhci_transfer_intr_enqueue(xfer);
}
