
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int stream_id; int endpoint; } ;


 int DPRINTF (char*) ;
 int xhci_device_generic_multi_enter (int ,int ,struct usb_xfer*) ;
 int xhci_setup_generic_chain (struct usb_xfer*) ;

__attribute__((used)) static void
xhci_device_generic_enter(struct usb_xfer *xfer)
{
 DPRINTF("\n");


 xhci_setup_generic_chain(xfer);

 xhci_device_generic_multi_enter(xfer->endpoint,
     xfer->stream_id, xfer);
}
