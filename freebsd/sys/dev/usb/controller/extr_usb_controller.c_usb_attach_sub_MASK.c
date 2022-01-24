#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_9__ ;
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_16__ ;
typedef  struct TYPE_23__   TYPE_15__ ;
typedef  struct TYPE_22__   TYPE_14__ ;
typedef  struct TYPE_21__   TYPE_13__ ;
typedef  struct TYPE_20__   TYPE_12__ ;
typedef  struct TYPE_19__   TYPE_11__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
struct usb_bus {TYPE_16__* attach_msg; int /*<<< orphan*/  bus_mtx; TYPE_14__* cleanup_msg; int /*<<< orphan*/  pd_cleanup_list; TYPE_13__* shutdown_msg; TYPE_11__* reset_msg; TYPE_9__* resume_msg; TYPE_7__* suspend_msg; TYPE_4__* detach_msg; TYPE_2__* explore_msg; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_32__ {int /*<<< orphan*/ * pm_callback; } ;
struct TYPE_33__ {struct usb_bus* bus; TYPE_8__ hdr; } ;
struct TYPE_30__ {int /*<<< orphan*/ * pm_callback; } ;
struct TYPE_31__ {struct usb_bus* bus; TYPE_6__ hdr; } ;
struct TYPE_29__ {int /*<<< orphan*/ * pm_callback; } ;
struct TYPE_27__ {int /*<<< orphan*/ * pm_callback; } ;
struct TYPE_28__ {struct usb_bus* bus; TYPE_3__ hdr; } ;
struct TYPE_25__ {int /*<<< orphan*/ * pm_callback; } ;
struct TYPE_26__ {struct usb_bus* bus; TYPE_1__ hdr; } ;
struct TYPE_24__ {struct usb_bus* bus; TYPE_5__ hdr; } ;
struct TYPE_23__ {int /*<<< orphan*/ * pm_callback; } ;
struct TYPE_22__ {struct usb_bus* bus; TYPE_15__ hdr; } ;
struct TYPE_20__ {int /*<<< orphan*/ * pm_callback; } ;
struct TYPE_21__ {struct usb_bus* bus; TYPE_12__ hdr; } ;
struct TYPE_18__ {int /*<<< orphan*/ * pm_callback; } ;
struct TYPE_19__ {struct usb_bus* bus; TYPE_10__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_bus*) ; 
 int /*<<< orphan*/  USB_PRI_HIGH ; 
 int /*<<< orphan*/  USB_PRI_HIGHEST ; 
 int /*<<< orphan*/  USB_PRI_MED ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_bus_attach ; 
 int /*<<< orphan*/  usb_bus_cleanup ; 
 int /*<<< orphan*/  usb_bus_detach ; 
 int /*<<< orphan*/  usb_bus_explore ; 
 int /*<<< orphan*/  usb_bus_reset ; 
 int /*<<< orphan*/  usb_bus_resume ; 
 int /*<<< orphan*/  usb_bus_shutdown ; 
 int /*<<< orphan*/  usb_bus_suspend ; 
 int /*<<< orphan*/ * usb_devclass_ptr ; 
 int /*<<< orphan*/  FUNC13 (struct usb_bus*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_16__*,TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_bus*) ; 

__attribute__((used)) static void
FUNC17(device_t dev, struct usb_bus *bus)
{
	FUNC11(&Giant);
	if (usb_devclass_ptr == NULL)
		usb_devclass_ptr = FUNC8("usbus");
	FUNC12(&Giant);

#if USB_HAVE_PF
	usbpf_attach(bus);
#endif
	/* Initialise USB process messages */
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

#if USB_HAVE_UGEN
	LIST_INIT(&bus->pd_cleanup_list);
	bus->cleanup_msg[0].hdr.pm_callback = &usb_bus_cleanup;
	bus->cleanup_msg[0].bus = bus;
	bus->cleanup_msg[1].hdr.pm_callback = &usb_bus_cleanup;
	bus->cleanup_msg[1].bus = bus;
#endif

#if USB_HAVE_PER_BUS_PROCESS
	/* Create USB explore and callback processes */

	if (usb_proc_create(USB_BUS_GIANT_PROC(bus),
	    &bus->bus_mtx, device_get_nameunit(dev), USB_PRI_MED)) {
		device_printf(dev, "WARNING: Creation of USB Giant "
		    "callback process failed.\n");
	} else if (usb_proc_create(USB_BUS_NON_GIANT_ISOC_PROC(bus),
	    &bus->bus_mtx, device_get_nameunit(dev), USB_PRI_HIGHEST)) {
		device_printf(dev, "WARNING: Creation of USB non-Giant ISOC "
		    "callback process failed.\n");
	} else if (usb_proc_create(USB_BUS_NON_GIANT_BULK_PROC(bus),
	    &bus->bus_mtx, device_get_nameunit(dev), USB_PRI_HIGH)) {
		device_printf(dev, "WARNING: Creation of USB non-Giant BULK "
		    "callback process failed.\n");
	} else if (usb_proc_create(USB_BUS_EXPLORE_PROC(bus),
	    &bus->bus_mtx, device_get_nameunit(dev), USB_PRI_MED)) {
		device_printf(dev, "WARNING: Creation of USB explore "
		    "process failed.\n");
	} else if (usb_proc_create(USB_BUS_CONTROL_XFER_PROC(bus),
	    &bus->bus_mtx, device_get_nameunit(dev), USB_PRI_MED)) {
		device_printf(dev, "WARNING: Creation of USB control transfer "
		    "process failed.\n");
	} else
#endif
	{
		/* Get final attach going */
		FUNC4(bus);
		FUNC15(FUNC2(bus),
		    &bus->attach_msg[0], &bus->attach_msg[1]);
		FUNC7(bus);

		/* Do initial explore */
		FUNC13(bus, 1);
	}
}