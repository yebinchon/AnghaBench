
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int dummy; } ;


 int USB_ERR_STALLED ;
 int dwc_otg_device_done (struct usb_xfer*,int ) ;

__attribute__((used)) static void
dwc_otg_xfer_stall(struct usb_xfer *xfer)
{
 dwc_otg_device_done(xfer, USB_ERR_STALLED);
}
