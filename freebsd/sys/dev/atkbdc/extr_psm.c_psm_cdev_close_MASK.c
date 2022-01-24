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
struct thread {int dummy; } ;
struct psm_softc {int state; int /*<<< orphan*/  unit; int /*<<< orphan*/ * async; } ;
struct cdev {struct psm_softc* si_drv1; } ;

/* Variables and functions */
 int ENXIO ; 
 int PSM_EV_OPEN_A ; 
 int PSM_EV_OPEN_R ; 
 int PSM_OPEN ; 
 int PSM_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  psm_devclass ; 
 int FUNC3 (struct psm_softc*) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, int flag, int fmt, struct thread *td)
{
	struct psm_softc *sc;
	int err = 0;

	/* Get device data */
	sc = dev->si_drv1;
	if ((sc == NULL) || (sc->state & PSM_VALID) == 0) {
		/* the device is no longer valid/functioning */
		return (ENXIO);
	}

#ifdef EVDEV_SUPPORT
	/* Still opened by evdev */
	if (!(sc->state & (PSM_EV_OPEN_R | PSM_EV_OPEN_A)))
#endif
		err = FUNC3(sc);

	if (err == 0) {
		sc->state &= ~PSM_OPEN;
		/* clean up and sigio requests */
		if (sc->async != NULL) {
			FUNC2(&sc->async);
			sc->async = NULL;
		}
		FUNC1(FUNC0(psm_devclass, sc->unit));
	}

	return (err);
}