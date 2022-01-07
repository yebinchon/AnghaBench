
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_xfer {void* td_transfer_last; struct avr32dci_td* td_transfer_cache; } ;
struct avr32dci_td {scalar_t__ remainder; struct avr32dci_td* obj_next; int alt_next; scalar_t__ error; scalar_t__ (* func ) (struct avr32dci_td*) ;} ;


 int DPRINTFN (int,char*) ;
 int avr32dci_standard_done (struct usb_xfer*) ;
 scalar_t__ stub1 (struct avr32dci_td*) ;

__attribute__((used)) static uint8_t
avr32dci_xfer_do_fifo(struct usb_xfer *xfer)
{
 struct avr32dci_td *td;

 DPRINTFN(9, "\n");

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


 avr32dci_standard_done(xfer);
 return (0);
}
