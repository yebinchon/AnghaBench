
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_xfer {TYPE_1__* xroot; } ;
struct TYPE_2__ {int bus; } ;


 int DPRINTF (char*,struct usb_xfer*) ;
 int MA_OWNED ;
 int USB_BUS_LOCK_ASSERT (int ,int ) ;
 int USB_ERR_TIMEOUT ;
 int uhci_device_done (struct usb_xfer*,int ) ;

__attribute__((used)) static void
uhci_timeout(void *arg)
{
 struct usb_xfer *xfer = arg;

 DPRINTF("xfer=%p\n", xfer);

 USB_BUS_LOCK_ASSERT(xfer->xroot->bus, MA_OWNED);


 uhci_device_done(xfer, USB_ERR_TIMEOUT);
}
