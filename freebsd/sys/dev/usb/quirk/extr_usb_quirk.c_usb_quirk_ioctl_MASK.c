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
typedef  size_t uint32_t ;
struct usb_quirk_entry {size_t* quirks; } ;
struct usb_gen_quirk {size_t index; int /*<<< orphan*/  bcdDeviceHigh; int /*<<< orphan*/  bcdDeviceLow; int /*<<< orphan*/  pid; int /*<<< orphan*/  vid; int /*<<< orphan*/  quirkname; } ;
struct thread {int dummy; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {size_t* quirks; int /*<<< orphan*/  hi_rev; int /*<<< orphan*/  lo_rev; int /*<<< orphan*/  pid; int /*<<< orphan*/  vid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOIOCTL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PRIV_DRIVER ; 
 size_t UQ_NONE ; 
 size_t USB_DEV_QUIRKS_MAX ; 
#define  USB_DEV_QUIRK_ADD 131 
#define  USB_DEV_QUIRK_GET 130 
#define  USB_DEV_QUIRK_REMOVE 129 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t USB_QUIRK_MAX ; 
#define  USB_QUIRK_NAME_GET 128 
 size_t USB_SUB_QUIRKS_MAX ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC2 (struct usb_quirk_entry*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct usb_quirk_entry* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  usb_quirk_mtx ; 
 TYPE_1__* usb_quirks ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 

__attribute__((used)) static int
FUNC8(unsigned long cmd, caddr_t data,
    int fflag, struct thread *td)
{
	struct usb_gen_quirk *pgq;
	struct usb_quirk_entry *pqe;
	uint32_t x;
	uint32_t y;
	int err;

	switch (cmd) {
	case USB_DEV_QUIRK_GET:
		pgq = (void *)data;
		x = pgq->index % USB_SUB_QUIRKS_MAX;
		y = pgq->index / USB_SUB_QUIRKS_MAX;
		if (y >= USB_DEV_QUIRKS_MAX) {
			return (EINVAL);
		}
		FUNC0(&usb_quirk_mtx);
		/* copy out data */
		pgq->vid = usb_quirks[y].vid;
		pgq->pid = usb_quirks[y].pid;
		pgq->bcdDeviceLow = usb_quirks[y].lo_rev;
		pgq->bcdDeviceHigh = usb_quirks[y].hi_rev;
		FUNC5(pgq->quirkname,
		    FUNC7(usb_quirks[y].quirks[x]),
		    sizeof(pgq->quirkname));
		FUNC1(&usb_quirk_mtx);
		return (0);		/* success */

	case USB_QUIRK_NAME_GET:
		pgq = (void *)data;
		x = pgq->index;
		if (x >= USB_QUIRK_MAX) {
			return (EINVAL);
		}
		FUNC5(pgq->quirkname,
		    FUNC7(x), sizeof(pgq->quirkname));
		return (0);		/* success */

	case USB_DEV_QUIRK_ADD:
		pgq = (void *)data;

		/* check privileges */
		err = FUNC3(curthread, PRIV_DRIVER);
		if (err) {
			return (err);
		}
		/* convert quirk string into numerical */
		for (y = 0; y != USB_DEV_QUIRKS_MAX; y++) {
			if (FUNC4(pgq->quirkname, FUNC7(y)) == 0) {
				break;
			}
		}
		if (y == USB_DEV_QUIRKS_MAX) {
			return (EINVAL);
		}
		if (y == UQ_NONE) {
			return (EINVAL);
		}
		FUNC0(&usb_quirk_mtx);
		pqe = FUNC6(pgq->vid, pgq->pid,
		    pgq->bcdDeviceLow, pgq->bcdDeviceHigh, 1);
		if (pqe == NULL) {
			FUNC1(&usb_quirk_mtx);
			return (EINVAL);
		}
		for (x = 0; x != USB_SUB_QUIRKS_MAX; x++) {
			if (pqe->quirks[x] == UQ_NONE) {
				pqe->quirks[x] = y;
				break;
			}
		}
		FUNC1(&usb_quirk_mtx);
		if (x == USB_SUB_QUIRKS_MAX) {
			return (ENOMEM);
		}
		return (0);		/* success */

	case USB_DEV_QUIRK_REMOVE:
		pgq = (void *)data;
		/* check privileges */
		err = FUNC3(curthread, PRIV_DRIVER);
		if (err) {
			return (err);
		}
		/* convert quirk string into numerical */
		for (y = 0; y != USB_DEV_QUIRKS_MAX; y++) {
			if (FUNC4(pgq->quirkname, FUNC7(y)) == 0) {
				break;
			}
		}
		if (y == USB_DEV_QUIRKS_MAX) {
			return (EINVAL);
		}
		if (y == UQ_NONE) {
			return (EINVAL);
		}
		FUNC0(&usb_quirk_mtx);
		pqe = FUNC6(pgq->vid, pgq->pid,
		    pgq->bcdDeviceLow, pgq->bcdDeviceHigh, 0);
		if (pqe == NULL) {
			FUNC1(&usb_quirk_mtx);
			return (EINVAL);
		}
		for (x = 0; x != USB_SUB_QUIRKS_MAX; x++) {
			if (pqe->quirks[x] == y) {
				pqe->quirks[x] = UQ_NONE;
				break;
			}
		}
		if (x == USB_SUB_QUIRKS_MAX) {
			FUNC1(&usb_quirk_mtx);
			return (ENOMEM);
		}
		for (x = 0; x != USB_SUB_QUIRKS_MAX; x++) {
			if (pqe->quirks[x] != UQ_NONE) {
				break;
			}
		}
		if (x == USB_SUB_QUIRKS_MAX) {
			/* all quirk entries are unused - release */
			FUNC2(pqe, 0, sizeof(*pqe));
		}
		FUNC1(&usb_quirk_mtx);
		return (0);		/* success */

	default:
		break;
	}
	return (ENOIOCTL);
}