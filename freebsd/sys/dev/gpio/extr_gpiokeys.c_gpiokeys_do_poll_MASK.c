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
typedef  scalar_t__ uint8_t ;
struct gpiokeys_softc {int sc_flags; scalar_t__ sc_inputs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpiokeys_softc*) ; 
 int GPIOKEYS_GLOBAL_FLAG_POLLING ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  PRI_UNCHANGED ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  kdb_active ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(struct gpiokeys_softc *sc, uint8_t wait)
{

	FUNC1((sc->sc_flags & GPIOKEYS_GLOBAL_FLAG_POLLING) != 0,
	    ("gpiokeys_do_poll called when not polling\n"));

	FUNC0(sc);

	if (!kdb_active && !FUNC2()) {
		while (sc->sc_inputs == 0) {
			FUNC3(PRI_UNCHANGED);
			if (!wait)
				break;
		}
		return;
	}

	while ((sc->sc_inputs == 0) && wait) {
		FUNC4("POLL!\n");
	}
}