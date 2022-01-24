#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xbd_softc {scalar_t__ xbd_users; int /*<<< orphan*/  xbd_dev; int /*<<< orphan*/  xbd_flags; } ;
struct disk {struct xbd_softc* d_drv1; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  XBDF_OPEN ; 
 scalar_t__ XenbusStateClosing ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct disk *dp)
{
	struct xbd_softc *sc = dp->d_drv1;

	if (sc == NULL)
		return (ENXIO);
	sc->xbd_flags &= ~XBDF_OPEN;
	if (--(sc->xbd_users) == 0) {
		/*
		 * Check whether we have been instructed to close.  We will
		 * have ignored this request initially, as the device was
		 * still mounted.
		 */
		if (FUNC1(sc->xbd_dev) ==
		    XenbusStateClosing)
			FUNC0(sc->xbd_dev);
	}
	return (0);
}