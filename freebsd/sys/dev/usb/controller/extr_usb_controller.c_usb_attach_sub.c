
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_16__ ;
typedef struct TYPE_23__ TYPE_15__ ;
typedef struct TYPE_22__ TYPE_14__ ;
typedef struct TYPE_21__ TYPE_13__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct usb_bus {TYPE_16__* attach_msg; int bus_mtx; TYPE_14__* cleanup_msg; int pd_cleanup_list; TYPE_13__* shutdown_msg; TYPE_11__* reset_msg; TYPE_9__* resume_msg; TYPE_7__* suspend_msg; TYPE_4__* detach_msg; TYPE_2__* explore_msg; } ;
typedef int device_t ;
struct TYPE_32__ {int * pm_callback; } ;
struct TYPE_33__ {struct usb_bus* bus; TYPE_8__ hdr; } ;
struct TYPE_30__ {int * pm_callback; } ;
struct TYPE_31__ {struct usb_bus* bus; TYPE_6__ hdr; } ;
struct TYPE_29__ {int * pm_callback; } ;
struct TYPE_27__ {int * pm_callback; } ;
struct TYPE_28__ {struct usb_bus* bus; TYPE_3__ hdr; } ;
struct TYPE_25__ {int * pm_callback; } ;
struct TYPE_26__ {struct usb_bus* bus; TYPE_1__ hdr; } ;
struct TYPE_24__ {struct usb_bus* bus; TYPE_5__ hdr; } ;
struct TYPE_23__ {int * pm_callback; } ;
struct TYPE_22__ {struct usb_bus* bus; TYPE_15__ hdr; } ;
struct TYPE_20__ {int * pm_callback; } ;
struct TYPE_21__ {struct usb_bus* bus; TYPE_12__ hdr; } ;
struct TYPE_18__ {int * pm_callback; } ;
struct TYPE_19__ {struct usb_bus* bus; TYPE_10__ hdr; } ;


 int Giant ;
 int LIST_INIT (int *) ;
 int USB_BUS_CONTROL_XFER_PROC (struct usb_bus*) ;
 int USB_BUS_EXPLORE_PROC (struct usb_bus*) ;
 int USB_BUS_GIANT_PROC (struct usb_bus*) ;
 int USB_BUS_LOCK (struct usb_bus*) ;
 int USB_BUS_NON_GIANT_BULK_PROC (struct usb_bus*) ;
 int USB_BUS_NON_GIANT_ISOC_PROC (struct usb_bus*) ;
 int USB_BUS_UNLOCK (struct usb_bus*) ;
 int USB_PRI_HIGH ;
 int USB_PRI_HIGHEST ;
 int USB_PRI_MED ;
 int * devclass_find (char*) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usb_bus_attach ;
 int usb_bus_cleanup ;
 int usb_bus_detach ;
 int usb_bus_explore ;
 int usb_bus_reset ;
 int usb_bus_resume ;
 int usb_bus_shutdown ;
 int usb_bus_suspend ;
 int * usb_devclass_ptr ;
 int usb_needs_explore (struct usb_bus*,int) ;
 scalar_t__ usb_proc_create (int ,int *,int ,int ) ;
 int usb_proc_msignal (int ,TYPE_16__*,TYPE_16__*) ;
 int usbpf_attach (struct usb_bus*) ;

__attribute__((used)) static void
usb_attach_sub(device_t dev, struct usb_bus *bus)
{
 mtx_lock(&Giant);
 if (usb_devclass_ptr == ((void*)0))
  usb_devclass_ptr = devclass_find("usbus");
 mtx_unlock(&Giant);





 bus->explore_msg[0].hdr.pm_callback = &usb_bus_explore;
 bus->explore_msg[0].bus = bus;
 bus->explore_msg[1].hdr.pm_callback = &usb_bus_explore;
 bus->explore_msg[1].bus = bus;

 bus->detach_msg[0].hdr.pm_callback = &usb_bus_detach;
 bus->detach_msg[0].bus = bus;
 bus->detach_msg[1].hdr.pm_callback = &usb_bus_detach;
 bus->detach_msg[1].bus = bus;

 bus->attach_msg[0].hdr.pm_callback = &usb_bus_attach;
 bus->attach_msg[0].bus = bus;
 bus->attach_msg[1].hdr.pm_callback = &usb_bus_attach;
 bus->attach_msg[1].bus = bus;

 bus->suspend_msg[0].hdr.pm_callback = &usb_bus_suspend;
 bus->suspend_msg[0].bus = bus;
 bus->suspend_msg[1].hdr.pm_callback = &usb_bus_suspend;
 bus->suspend_msg[1].bus = bus;

 bus->resume_msg[0].hdr.pm_callback = &usb_bus_resume;
 bus->resume_msg[0].bus = bus;
 bus->resume_msg[1].hdr.pm_callback = &usb_bus_resume;
 bus->resume_msg[1].bus = bus;

 bus->reset_msg[0].hdr.pm_callback = &usb_bus_reset;
 bus->reset_msg[0].bus = bus;
 bus->reset_msg[1].hdr.pm_callback = &usb_bus_reset;
 bus->reset_msg[1].bus = bus;

 bus->shutdown_msg[0].hdr.pm_callback = &usb_bus_shutdown;
 bus->shutdown_msg[0].bus = bus;
 bus->shutdown_msg[1].hdr.pm_callback = &usb_bus_shutdown;
 bus->shutdown_msg[1].bus = bus;
 {

  USB_BUS_LOCK(bus);
  usb_proc_msignal(USB_BUS_EXPLORE_PROC(bus),
      &bus->attach_msg[0], &bus->attach_msg[1]);
  USB_BUS_UNLOCK(bus);


  usb_needs_explore(bus, 1);
 }
}
