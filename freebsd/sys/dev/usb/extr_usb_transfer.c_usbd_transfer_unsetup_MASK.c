#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  size_t uint16_t ;
struct usb_xfer_root {scalar_t__ setup_refcount; int /*<<< orphan*/  bus; } ;
struct TYPE_3__ {scalar_t__ bdma_enable; } ;
struct usb_xfer {int /*<<< orphan*/  timeout_handle; TYPE_2__* endpoint; TYPE_1__ flags_int; struct usb_xfer_root* xroot; } ;
struct TYPE_4__ {int /*<<< orphan*/  refcount_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 int WARN_GIANTOK ; 
 int WARN_SLEEPOK ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer_root*,int) ; 

void
FUNC9(struct usb_xfer **pxfer, uint16_t n_setup)
{
	struct usb_xfer *xfer;
	struct usb_xfer_root *info;
	uint8_t needs_delay = 0;

	FUNC5(WARN_GIANTOK | WARN_SLEEPOK, NULL,
	    "usbd_transfer_unsetup can sleep!");

	while (n_setup--) {
		xfer = pxfer[n_setup];

		if (xfer == NULL)
			continue;

		info = xfer->xroot;

		FUNC3(xfer);
		FUNC1(info->bus);

		/*
		 * HINT: when you start/stop a transfer, it might be a
		 * good idea to directly use the "pxfer[]" structure:
		 *
		 * usbd_transfer_start(sc->pxfer[0]);
		 * usbd_transfer_stop(sc->pxfer[0]);
		 *
		 * That way, if your code has many parts that will not
		 * stop running under the same lock, in other words
		 * "xfer_mtx", the usbd_transfer_start and
		 * usbd_transfer_stop functions will simply return
		 * when they detect a NULL pointer argument.
		 *
		 * To avoid any races we clear the "pxfer[]" pointer
		 * while holding the private mutex of the driver:
		 */
		pxfer[n_setup] = NULL;

		FUNC2(info->bus);
		FUNC4(xfer);

		FUNC7(xfer);

#if USB_HAVE_BUSDMA
		if (xfer->flags_int.bdma_enable)
			needs_delay = 1;
#endif
		/*
		 * NOTE: default endpoint does not have an
		 * interface, even if endpoint->iface_index == 0
		 */
		FUNC1(info->bus);
		xfer->endpoint->refcount_alloc--;
		FUNC2(info->bus);

		FUNC6(&xfer->timeout_handle);

		FUNC1(info->bus);

		FUNC0(info->setup_refcount != 0, ("Invalid setup "
		    "reference count\n"));

		info->setup_refcount--;

		if (info->setup_refcount == 0) {
			FUNC8(info,
			    needs_delay);
		} else {
			FUNC2(info->bus);
		}
	}
}