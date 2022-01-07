
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_xfer {TYPE_1__* xroot; } ;
struct TYPE_2__ {int bus; } ;


 int DPRINTFN (int,char*,struct usb_xfer*) ;
 int MA_OWNED ;
 int USB_BUS_LOCK_ASSERT (int ,int ) ;
 int USB_ERR_TIMEOUT ;
 int musbotg_device_done (struct usb_xfer*,int ) ;

__attribute__((used)) static void
musbotg_timeout(void *arg)
{
 struct usb_xfer *xfer = arg;

 DPRINTFN(1, "xfer=%p\n", xfer);

 USB_BUS_LOCK_ASSERT(xfer->xroot->bus, MA_OWNED);


 musbotg_device_done(xfer, USB_ERR_TIMEOUT);
}
