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
struct vr_softc {scalar_t__ vr_revid; int /*<<< orphan*/  vr_dev; } ;

/* Variables and functions */
 int FUNC0 (struct vr_softc const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vr_softc const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ REV_ID_VT6102_A ; 
 int /*<<< orphan*/  VR_CR1 ; 
 int VR_CR1_RESET ; 
 int /*<<< orphan*/  VR_MISCCR1_FORSRST ; 
 int /*<<< orphan*/  VR_MISC_CR1 ; 
 int /*<<< orphan*/  FUNC3 (struct vr_softc const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(const struct vr_softc *sc)
{
	int		i;

	/*VR_LOCK_ASSERT(sc);*/ /* XXX: Called during attach w/o lock. */

	FUNC1(sc, VR_CR1, VR_CR1_RESET);
	if (sc->vr_revid < REV_ID_VT6102_A) {
		/* VT86C100A needs more delay after reset. */
		FUNC2(100);
	}
	for (i = 0; i < VR_TIMEOUT; i++) {
		FUNC2(10);
		if (!(FUNC0(sc, VR_CR1) & VR_CR1_RESET))
			break;
	}
	if (i == VR_TIMEOUT) {
		if (sc->vr_revid < REV_ID_VT6102_A)
			FUNC4(sc->vr_dev, "reset never completed!\n");
		else {
			/* Use newer force reset command. */
			FUNC4(sc->vr_dev,
			    "Using force reset command.\n");
			FUNC3(sc, VR_MISC_CR1, VR_MISCCR1_FORSRST);
			/*
			 * Wait a little while for the chip to get its brains
			 * in order.
			 */
			FUNC2(2000);
		}
	}

}