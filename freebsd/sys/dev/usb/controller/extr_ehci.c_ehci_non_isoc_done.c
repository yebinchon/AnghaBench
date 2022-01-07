
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int usb_error_t ;
struct TYPE_5__ {size_t curr_dma_set; int control_act; scalar_t__ control_xfr; scalar_t__ control_hdr; } ;
struct usb_xfer {int aframes; int nframes; TYPE_2__ flags_int; int * td_transfer_cache; int * td_transfer_first; TYPE_3__** qh_start; TYPE_1__* xroot; int endpoint; } ;
typedef int ehci_softc_t ;
struct TYPE_6__ {int page_cache; } ;
typedef TYPE_3__ ehci_qh_t ;
struct TYPE_4__ {int bus; } ;


 int DPRINTFN (int,char*,struct usb_xfer*,int ) ;
 int * EHCI_BUS2SC (int ) ;
 int ehci_device_done (struct usb_xfer*,int ) ;
 int ehci_dump_sqtds (int *,int *) ;
 int ehci_non_isoc_done_sub (struct usb_xfer*) ;
 int ehcidebug ;
 int usb_pc_cpu_invalidate (int ) ;

__attribute__((used)) static void
ehci_non_isoc_done(struct usb_xfer *xfer)
{
 ehci_qh_t *qh;
 usb_error_t err = 0;

 DPRINTFN(13, "xfer=%p endpoint=%p transfer done\n",
     xfer, xfer->endpoint);
 qh = xfer->qh_start[xfer->flags_int.curr_dma_set];

 usb_pc_cpu_invalidate(qh->page_cache);



 xfer->td_transfer_cache = xfer->td_transfer_first;

 if (xfer->flags_int.control_xfr) {

  if (xfer->flags_int.control_hdr) {

   err = ehci_non_isoc_done_sub(xfer);
  }
  xfer->aframes = 1;

  if (xfer->td_transfer_cache == ((void*)0)) {
   goto done;
  }
 }
 while (xfer->aframes != xfer->nframes) {

  err = ehci_non_isoc_done_sub(xfer);
  xfer->aframes++;

  if (xfer->td_transfer_cache == ((void*)0)) {
   goto done;
  }
 }

 if (xfer->flags_int.control_xfr &&
     !xfer->flags_int.control_act) {

  err = ehci_non_isoc_done_sub(xfer);
 }
done:
 ehci_device_done(xfer, err);
}
