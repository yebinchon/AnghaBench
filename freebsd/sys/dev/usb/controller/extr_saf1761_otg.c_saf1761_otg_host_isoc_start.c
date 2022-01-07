
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int dummy; } ;


 int saf1761_otg_start_standard_chain (struct usb_xfer*) ;

__attribute__((used)) static void
saf1761_otg_host_isoc_start(struct usb_xfer *xfer)
{

 saf1761_otg_start_standard_chain(xfer);
}
