
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_xfer {void* td_transfer_last; struct octusb_td* td_transfer_cache; } ;
struct octusb_td {scalar_t__ remainder; scalar_t__ alt_next; struct octusb_td* obj_next; scalar_t__ error_any; scalar_t__ (* func ) (struct octusb_td*) ;} ;


 int DPRINTFN (int,char*) ;
 int octusb_standard_done (struct usb_xfer*) ;
 scalar_t__ stub1 (struct octusb_td*) ;

__attribute__((used)) static uint8_t
octusb_xfer_do_fifo(struct usb_xfer *xfer)
{
 struct octusb_td *td;

 DPRINTFN(8, "\n");

 td = xfer->td_transfer_cache;

 while (1) {
  if ((td->func) (td)) {

   break;
  }
  if (((void *)td) == xfer->td_transfer_last) {
   goto done;
  }
  if (td->error_any) {
   goto done;
  } else if (td->remainder > 0) {




   if (td->alt_next == 0)
    goto done;
  }




  td = td->obj_next;
  xfer->td_transfer_cache = td;
 }
 return (1);

done:


 octusb_standard_done(xfer);

 return (0);
}
