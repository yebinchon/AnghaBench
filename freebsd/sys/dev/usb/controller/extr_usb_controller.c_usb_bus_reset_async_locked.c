
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_bus {TYPE_3__* reset_msg; int parent; } ;
struct TYPE_6__ {int * tqe_prev; } ;
struct TYPE_5__ {TYPE_2__ pm_qentry; } ;
struct TYPE_7__ {TYPE_1__ hdr; } ;


 int DPRINTF (char*) ;
 int MA_OWNED ;
 int USB_BUS_EXPLORE_PROC (struct usb_bus*) ;
 int USB_BUS_LOCK_ASSERT (struct usb_bus*,int ) ;
 int device_printf (int ,char*) ;
 int usb_proc_msignal (int ,TYPE_3__*,TYPE_3__*) ;

void
usb_bus_reset_async_locked(struct usb_bus *bus)
{
 USB_BUS_LOCK_ASSERT(bus, MA_OWNED);

 DPRINTF("\n");

 if (bus->reset_msg[0].hdr.pm_qentry.tqe_prev != ((void*)0) ||
     bus->reset_msg[1].hdr.pm_qentry.tqe_prev != ((void*)0)) {
  DPRINTF("Reset already pending\n");
  return;
 }

 device_printf(bus->parent, "Resetting controller\n");

 usb_proc_msignal(USB_BUS_EXPLORE_PROC(bus),
     &bus->reset_msg[0], &bus->reset_msg[1]);
}
