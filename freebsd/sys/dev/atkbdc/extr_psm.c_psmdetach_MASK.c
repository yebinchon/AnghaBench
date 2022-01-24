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
struct psm_softc {int state; int /*<<< orphan*/  softcallout; int /*<<< orphan*/  callout; int /*<<< orphan*/  bdev; int /*<<< orphan*/  dev; int /*<<< orphan*/  intr; int /*<<< orphan*/  ih; int /*<<< orphan*/  evdev_a; int /*<<< orphan*/  evdev_r; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUSY ; 
 int KBDC_RID_AUX ; 
 int PSM_OPEN ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct psm_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct psm_softc *sc;
	int rid;

	sc = FUNC4(dev);
	if (sc->state & PSM_OPEN)
		return (EBUSY);

#ifdef EVDEV_SUPPORT
	evdev_free(sc->evdev_r);
	evdev_free(sc->evdev_a);
#endif

	rid = KBDC_RID_AUX;
	FUNC1(dev, sc->intr, sc->ih);
	FUNC0(dev, SYS_RES_IRQ, rid, sc->intr);

	FUNC3(sc->dev);
	FUNC3(sc->bdev);

	FUNC2(&sc->callout);
	FUNC2(&sc->softcallout);

	return (0);
}