#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* usb_bus_mem_cb_t ) (struct usb_bus*,int /*<<< orphan*/ *) ;
typedef  int uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  head; } ;
struct usb_bus {int alloc_failed; scalar_t__ devices_max; int /*<<< orphan*/ * devices; int /*<<< orphan*/  dma_bits; int /*<<< orphan*/  bus_mtx; int /*<<< orphan*/  dma_tags; int /*<<< orphan*/  dma_parent_tag; TYPE_1__ intr_q; int /*<<< orphan*/  power_wdog; int /*<<< orphan*/  parent; int /*<<< orphan*/  bus_spin_lock; } ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int MTX_DEF ; 
 int MTX_RECURSE ; 
 int MTX_SPIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USB_BUS_DMA_TAG_MAX ; 
 scalar_t__ USB_MAX_DEVICES ; 
 scalar_t__ USB_MIN_DEVICES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  usb_bus_mem_alloc_all_cb ; 
 int /*<<< orphan*/  FUNC4 (struct usb_bus*,int /*<<< orphan*/  (*) (struct usb_bus*,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint8_t
FUNC7(struct usb_bus *bus, bus_dma_tag_t dmat,
    usb_bus_mem_cb_t *cb)
{
	bus->alloc_failed = 0;

	FUNC3(&bus->bus_mtx, FUNC2(bus->parent),
	    "usb_def_mtx", MTX_DEF | MTX_RECURSE);

	FUNC3(&bus->bus_spin_lock, FUNC2(bus->parent),
	    "usb_spin_mtx", MTX_SPIN | MTX_RECURSE);

	FUNC5(&bus->power_wdog,
	    &bus->bus_mtx, 0);

	FUNC1(&bus->intr_q.head);

#if USB_HAVE_BUSDMA
	usb_dma_tag_setup(bus->dma_parent_tag, bus->dma_tags,
	    dmat, &bus->bus_mtx, NULL, bus->dma_bits, USB_BUS_DMA_TAG_MAX);
#endif
	if ((bus->devices_max > USB_MAX_DEVICES) ||
	    (bus->devices_max < USB_MIN_DEVICES) ||
	    (bus->devices == NULL)) {
		FUNC0(0, "Devices field has not been "
		    "initialised properly\n");
		bus->alloc_failed = 1;		/* failure */
	}
#if USB_HAVE_BUSDMA
	if (cb) {
		cb(bus, &usb_bus_mem_alloc_all_cb);
	}
#endif
	if (bus->alloc_failed) {
		FUNC4(bus, cb);
	}
	return (bus->alloc_failed);
}