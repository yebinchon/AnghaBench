
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uss820dci_td {scalar_t__ remainder; struct uss820dci_td* obj_next; int alt_next; scalar_t__ error; scalar_t__ (* func ) (struct uss820dci_softc*,struct uss820dci_td*) ;} ;
struct uss820dci_softc {int sc_xfer_complete; } ;
struct usb_xfer {void* td_transfer_last; struct uss820dci_td* td_transfer_cache; TYPE_1__* xroot; } ;
struct TYPE_2__ {int bus; } ;


 int DPRINTFN (int,char*) ;
 struct uss820dci_softc* USS820_DCI_BUS2SC (int ) ;
 scalar_t__ stub1 (struct uss820dci_softc*,struct uss820dci_td*) ;

__attribute__((used)) static void
uss820dci_xfer_do_fifo(struct usb_xfer *xfer)
{
 struct uss820dci_softc *sc = USS820_DCI_BUS2SC(xfer->xroot->bus);
 struct uss820dci_td *td;

 DPRINTFN(9, "\n");

 td = xfer->td_transfer_cache;
 if (td == ((void*)0))
  return;

 while (1) {
  if ((td->func) (sc, td)) {

   break;
  }
  if (((void *)td) == xfer->td_transfer_last) {
   goto done;
  }
  if (td->error) {
   goto done;
  } else if (td->remainder > 0) {




   if (!td->alt_next) {
    goto done;
   }
  }



  td = td->obj_next;
  xfer->td_transfer_cache = td;
 }
 return;

done:

 xfer->td_transfer_cache = ((void*)0);
 sc->sc_xfer_complete = 1;
}
