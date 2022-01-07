
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_8__ {size_t curr_dma_set; } ;
struct usb_xfer {void* td_transfer_last; TYPE_5__* xroot; TYPE_4__* endpoint; TYPE_1__ flags_int; TYPE_7__** qh_start; TYPE_6__* td_transfer_cache; } ;
struct TYPE_13__ {int td_self; struct TYPE_13__* obj_next; struct TYPE_13__* alt_next; int td_next; int td_flags; int td_cbp; int page_cache; } ;
typedef TYPE_6__ ohci_td_t ;
typedef int ohci_softc_t ;
struct TYPE_14__ {int page_cache; int ed_headp; } ;
typedef TYPE_7__ ohci_ed_t ;
struct TYPE_12__ {int bus; TYPE_3__* udev; } ;
struct TYPE_11__ {int * methods; } ;
struct TYPE_9__ {scalar_t__ self_suspended; } ;
struct TYPE_10__ {TYPE_2__ flags; } ;


 int DPRINTFN (int,char*,struct usb_xfer*) ;
 int OHCI_BLF ;
 int * OHCI_BUS2SC (int ) ;
 int OHCI_CLF ;
 int OHCI_COMMAND_STATUS ;
 scalar_t__ OHCI_TD_GET_CC (int) ;
 int OHCI_TD_NEXT_END ;
 int OWRITE4 (int *,int ,int ) ;
 int le32toh (int ) ;
 int ohci_device_bulk_methods ;
 int ohci_device_ctrl_methods ;
 int usb_pc_cpu_flush (int ) ;
 int usb_pc_cpu_invalidate (int ) ;

__attribute__((used)) static void
ohci_check_transfer_sub(struct usb_xfer *xfer)
{
 ohci_td_t *td;
 ohci_ed_t *ed;
 uint32_t phy_start;
 uint32_t td_flags;
 uint32_t td_next;
 uint16_t cc;

 td = xfer->td_transfer_cache;

 while (1) {

  usb_pc_cpu_invalidate(td->page_cache);
  phy_start = le32toh(td->td_cbp);
  td_flags = le32toh(td->td_flags);
  td_next = le32toh(td->td_next);


  if (((void *)td) == xfer->td_transfer_last) {

   td = ((void*)0);
   break;
  }

  cc = OHCI_TD_GET_CC(td_flags);
  if (cc) {

   td = ((void*)0);
   break;
  }





  if (((td_next & (~0xF)) == OHCI_TD_NEXT_END) || phy_start) {

   td = td->alt_next;
   break;
  }
  td = td->obj_next;
 }



 xfer->td_transfer_cache = td;

 if (td) {

  ed = xfer->qh_start[xfer->flags_int.curr_dma_set];

  ed->ed_headp = td->td_self;
  usb_pc_cpu_flush(ed->page_cache);

  DPRINTFN(13, "xfer=%p following alt next\n", xfer);






  if (xfer->xroot->udev->flags.self_suspended) {

  } else if (xfer->endpoint->methods == &ohci_device_bulk_methods) {
   ohci_softc_t *sc = OHCI_BUS2SC(xfer->xroot->bus);

   OWRITE4(sc, OHCI_COMMAND_STATUS, OHCI_BLF);
  } else if (xfer->endpoint->methods == &ohci_device_ctrl_methods) {
   ohci_softc_t *sc = OHCI_BUS2SC(xfer->xroot->bus);

   OWRITE4(sc, OHCI_COMMAND_STATUS, OHCI_CLF);
  }
 }
}
