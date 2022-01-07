
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int endpoint; } ;


 int DPRINTFN (int,char*,struct usb_xfer*,int ,int ) ;
 int usbd_transfer_done (struct usb_xfer*,int ) ;
 int xhci_transfer_remove (struct usb_xfer*,int ) ;

__attribute__((used)) static void
xhci_device_done(struct usb_xfer *xfer, usb_error_t error)
{
 DPRINTFN(2, "xfer=%p, endpoint=%p, error=%d\n",
     xfer, xfer->endpoint, error);


 xhci_transfer_remove(xfer, error);


 usbd_transfer_done(xfer, error);
}
