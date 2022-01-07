
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int dummy; } ;


 int dwc_otg_setup_standard_chain (struct usb_xfer*) ;
 int dwc_otg_start_standard_chain (struct usb_xfer*) ;

__attribute__((used)) static void
dwc_otg_device_non_isoc_start(struct usb_xfer *xfer)
{

 dwc_otg_setup_standard_chain(xfer);
 dwc_otg_start_standard_chain(xfer);
}
