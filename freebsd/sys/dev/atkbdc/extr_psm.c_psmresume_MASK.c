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
struct psm_softc {int config; int state; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int PSM_ASLP ; 
 int PSM_CONFIG_HOOKRESUME ; 
 int PSM_CONFIG_INITAFTERSUSPEND ; 
 int PSM_VALID ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct psm_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct psm_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct psm_softc*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct psm_softc *sc = FUNC1(dev);
	int unit = FUNC2(dev);
	int err;

	FUNC0(2, (LOG_NOTICE, "psm%d: system resume hook called.\n", unit));

	if ((sc->config &
	    (PSM_CONFIG_HOOKRESUME | PSM_CONFIG_INITAFTERSUSPEND)) == 0)
		return (0);

	err = FUNC3(sc, sc->config & PSM_CONFIG_INITAFTERSUSPEND);

	if ((sc->state & PSM_ASLP) && !(sc->state & PSM_VALID)) {
		/*
		 * Release the blocked process; it must be notified that
		 * the device cannot be accessed anymore.
		 */
		sc->state &= ~PSM_ASLP;
		FUNC4(sc);
	}

	FUNC0(2, (LOG_DEBUG, "psm%d: system resume hook exiting.\n", unit));

	return (err);
}