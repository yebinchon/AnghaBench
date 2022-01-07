
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uss820dci_td {int dummy; } ;
struct usb_xfer {struct uss820dci_td* td_transfer_cache; } ;


 int DPRINTFN (int,char*) ;
 int uss820dci_standard_done (struct usb_xfer*) ;

__attribute__((used)) static uint8_t
uss820dci_xfer_do_complete(struct usb_xfer *xfer)
{
 struct uss820dci_td *td;

 DPRINTFN(9, "\n");

 td = xfer->td_transfer_cache;
 if (td == ((void*)0)) {

  uss820dci_standard_done(xfer);
  return(1);
 }
 return (0);
}
