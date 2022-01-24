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
struct iwm_softc {int sc_flags; int /*<<< orphan*/  sc_generation; } ;

/* Variables and functions */
 int IWM_FLAG_HW_INITED ; 
 int IWM_FLAG_STOPPED ; 
 int FUNC0 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void
FUNC3(struct iwm_softc *sc)
{
	int error;

	if (sc->sc_flags & IWM_FLAG_HW_INITED) {
		return;
	}
	sc->sc_generation++;
	sc->sc_flags &= ~IWM_FLAG_STOPPED;

	if ((error = FUNC0(sc)) != 0) {
		FUNC2("iwm_init_hw failed %d\n", error);
		FUNC1(sc);
		return;
	}

	/*
	 * Ok, firmware loaded and we are jogging
	 */
	sc->sc_flags |= IWM_FLAG_HW_INITED;
}