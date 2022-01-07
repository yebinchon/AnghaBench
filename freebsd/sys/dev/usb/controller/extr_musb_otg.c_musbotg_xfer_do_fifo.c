
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct usb_xfer {void* td_transfer_last; struct musbotg_td* td_transfer_cache; TYPE_1__* xroot; } ;
struct musbotg_td {scalar_t__ remainder; struct musbotg_td* obj_next; int alt_next; scalar_t__ error; scalar_t__ (* func ) (struct musbotg_td*) ;} ;
struct musbotg_softc {int dummy; } ;
struct TYPE_2__ {int bus; } ;


 int DPRINTFN (int,char*) ;
 struct musbotg_softc* MUSBOTG_BUS2SC (int ) ;
 int musbotg_standard_done (struct usb_xfer*) ;
 scalar_t__ stub1 (struct musbotg_td*) ;

__attribute__((used)) static uint8_t
musbotg_xfer_do_fifo(struct usb_xfer *xfer)
{
 struct musbotg_softc *sc;
 struct musbotg_td *td;

 DPRINTFN(8, "\n");
 sc = MUSBOTG_BUS2SC(xfer->xroot->bus);

 td = xfer->td_transfer_cache;
 while (1) {

  if ((td->func) (td)) {

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

 return (1);
done:

 musbotg_standard_done(xfer);

 return (0);
}
