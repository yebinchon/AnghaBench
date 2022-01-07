
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_td {int page_cache; TYPE_1__* td_trb; } ;
struct usb_xfer {struct xhci_td* td_transfer_cache; } ;
struct TYPE_2__ {int dwTrb3; } ;


 int XHCI_TRB_3_CYCLE_BIT ;
 int htole32 (int ) ;
 int usb_pc_cpu_flush (int ) ;
 int usb_pc_cpu_invalidate (int ) ;
 int xhci_endpoint_doorbell (struct usb_xfer*) ;

__attribute__((used)) static void
xhci_activate_transfer(struct usb_xfer *xfer)
{
 struct xhci_td *td;

 td = xfer->td_transfer_cache;

 usb_pc_cpu_invalidate(td->page_cache);

 if (!(td->td_trb[0].dwTrb3 & htole32(XHCI_TRB_3_CYCLE_BIT))) {



  td->td_trb[0].dwTrb3 |= htole32(XHCI_TRB_3_CYCLE_BIT);
  usb_pc_cpu_flush(td->page_cache);

  xhci_endpoint_doorbell(xfer);
 }
}
