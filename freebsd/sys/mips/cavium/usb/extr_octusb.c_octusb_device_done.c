
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
struct TYPE_4__ {scalar_t__ control_act; } ;
struct usb_xfer {struct octusb_td** td_start; TYPE_2__ flags_int; int endpoint; TYPE_1__* xroot; } ;
struct octusb_td {int dummy; } ;
struct TYPE_3__ {int bus; } ;


 int DPRINTFN (int,char*,struct usb_xfer*,int ,scalar_t__) ;
 int MA_OWNED ;
 int USB_BUS_LOCK_ASSERT (int ,int ) ;
 int octusb_host_free_endpoint (struct octusb_td*) ;
 int usbd_transfer_done (struct usb_xfer*,scalar_t__) ;

__attribute__((used)) static void
octusb_device_done(struct usb_xfer *xfer, usb_error_t error)
{
 USB_BUS_LOCK_ASSERT(xfer->xroot->bus, MA_OWNED);

 DPRINTFN(2, "xfer=%p, endpoint=%p, error=%d\n",
     xfer, xfer->endpoint, error);






 if ((xfer->flags_int.control_act == 0) || (error != 0)) {
  struct octusb_td *td;

  td = xfer->td_start[0];

  octusb_host_free_endpoint(td);
 }

 usbd_transfer_done(xfer, error);
}
