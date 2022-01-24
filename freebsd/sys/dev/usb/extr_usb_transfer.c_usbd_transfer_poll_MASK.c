#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  size_t uint16_t ;
struct usb_xfer_root {int /*<<< orphan*/ * xfer_mtx; int /*<<< orphan*/  bus; TYPE_6__* done_m; struct usb_device* udev; } ;
struct usb_xfer {struct usb_xfer_root* xroot; } ;
struct usb_proc_msg {int /*<<< orphan*/  (* pm_callback ) (struct usb_proc_msg*) ;} ;
struct usb_device {TYPE_5__** ctrl_xfer; TYPE_2__* cs_msg; struct usb_bus* bus; } ;
struct usb_bus {int /*<<< orphan*/  bus_spin_lock; int /*<<< orphan*/  bus_mtx; TYPE_1__* methods; } ;
struct TYPE_22__ {scalar_t__ up_msleep; } ;
struct TYPE_21__ {scalar_t__ up_msleep; } ;
struct TYPE_20__ {scalar_t__ up_msleep; } ;
struct TYPE_19__ {struct usb_proc_msg hdr; } ;
struct TYPE_18__ {TYPE_4__* xroot; } ;
struct TYPE_17__ {TYPE_3__* done_m; } ;
struct TYPE_16__ {struct usb_proc_msg hdr; } ;
struct TYPE_15__ {struct usb_proc_msg hdr; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* xfer_poll ) (struct usb_bus*) ;} ;
struct TYPE_13__ {scalar_t__ up_msleep; } ;
struct TYPE_12__ {scalar_t__ up_msleep; } ;

/* Variables and functions */
 TYPE_11__* FUNC0 (struct usb_bus*) ; 
 TYPE_10__* FUNC1 (struct usb_bus*) ; 
 TYPE_9__* FUNC2 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC4 (struct usb_bus*) ; 
 TYPE_7__* FUNC5 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_bus*) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_proc_msg*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_proc_msg*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_proc_msg*) ; 

void
FUNC17(struct usb_xfer **ppxfer, uint16_t max)
{
	struct usb_xfer *xfer;
	struct usb_xfer_root *xroot;
	struct usb_device *udev;
	struct usb_proc_msg *pm;
	struct usb_bus *bus;
	uint16_t n;
	uint16_t drop_bus_spin;
	uint16_t drop_bus;
	uint16_t drop_xfer;

	for (n = 0; n != max; n++) {
		/* Extra checks to avoid panic */
		xfer = ppxfer[n];
		if (xfer == NULL)
			continue;	/* no USB transfer */
		xroot = xfer->xroot;
		if (xroot == NULL)
			continue;	/* no USB root */
		udev = xroot->udev;
		if (udev == NULL)
			continue;	/* no USB device */
		bus = udev->bus;
		if (bus == NULL)
			continue;	/* no BUS structure */
		if (bus->methods == NULL)
			continue;	/* no BUS methods */
		if (bus->methods->xfer_poll == NULL)
			continue;	/* no poll method */

		drop_bus_spin = 0;
		drop_bus = 0;
		drop_xfer = 0;

		if (FUNC7() == 0) {
			/* make sure that the BUS spin mutex is not locked */
			while (FUNC10(&bus->bus_spin_lock)) {
				FUNC12(&bus->bus_spin_lock);
				drop_bus_spin++;
			}
		
			/* make sure that the BUS mutex is not locked */
			while (FUNC10(&bus->bus_mtx)) {
				FUNC11(&bus->bus_mtx);
				drop_bus++;
			}

			/* make sure that the transfer mutex is not locked */
			while (FUNC10(xroot->xfer_mtx)) {
				FUNC11(xroot->xfer_mtx);
				drop_xfer++;
			}
		}

		/* Make sure cv_signal() and cv_broadcast() is not called */
		FUNC0(bus)->up_msleep = 0;
		FUNC1(bus)->up_msleep = 0;
		FUNC2(bus)->up_msleep = 0;
		FUNC5(bus)->up_msleep = 0;
		FUNC4(bus)->up_msleep = 0;

		/* poll USB hardware */
		(bus->methods->xfer_poll) (bus);

		FUNC3(xroot->bus);

		/* check for clear stall */
		if (udev->ctrl_xfer[1] != NULL) {

			/* poll clear stall start */
			pm = &udev->cs_msg[0].hdr;
			(pm->pm_callback) (pm);
			/* poll clear stall done thread */
			pm = &udev->ctrl_xfer[1]->
			    xroot->done_m[0].hdr;
			(pm->pm_callback) (pm);
		}

		/* poll done thread */
		pm = &xroot->done_m[0].hdr;
		(pm->pm_callback) (pm);

		FUNC6(xroot->bus);

		/* restore transfer mutex */
		while (drop_xfer--)
			FUNC8(xroot->xfer_mtx);

		/* restore BUS mutex */
		while (drop_bus--)
			FUNC8(&bus->bus_mtx);

		/* restore BUS spin mutex */
		while (drop_bus_spin--)
			FUNC9(&bus->bus_spin_lock);
	}
}