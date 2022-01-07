
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
struct TYPE_2__ {int control_act; scalar_t__ control_xfr; scalar_t__ control_hdr; } ;
struct usb_xfer {int aframes; int nframes; TYPE_1__ flags_int; int * td_transfer_cache; int * td_transfer_first; int endpoint; } ;


 int DPRINTFN (int,char*,struct usb_xfer*,int ) ;
 int uhci_device_done (struct usb_xfer*,int ) ;
 int uhci_dump_tds (int *) ;
 int uhci_non_isoc_done_sub (struct usb_xfer*) ;
 int uhcidebug ;
 int usb_bdma_post_sync (struct usb_xfer*) ;

__attribute__((used)) static void
uhci_non_isoc_done(struct usb_xfer *xfer)
{
 usb_error_t err = 0;

 DPRINTFN(13, "xfer=%p endpoint=%p transfer done\n",
     xfer, xfer->endpoint);
 usb_bdma_post_sync(xfer);



 xfer->td_transfer_cache = xfer->td_transfer_first;

 if (xfer->flags_int.control_xfr) {
  if (xfer->flags_int.control_hdr) {

   err = uhci_non_isoc_done_sub(xfer);
  }
  xfer->aframes = 1;

  if (xfer->td_transfer_cache == ((void*)0)) {
   goto done;
  }
 }
 while (xfer->aframes != xfer->nframes) {

  err = uhci_non_isoc_done_sub(xfer);
  xfer->aframes++;

  if (xfer->td_transfer_cache == ((void*)0)) {
   goto done;
  }
 }

 if (xfer->flags_int.control_xfr &&
     !xfer->flags_int.control_act) {

  err = uhci_non_isoc_done_sub(xfer);
 }
done:
 uhci_device_done(xfer, err);
}
