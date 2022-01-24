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
struct ukbd_softc {scalar_t__ sc_inputs; scalar_t__ sc_delay; int /*<<< orphan*/  sc_time_ms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct ukbd_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ukbd_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ukbd_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ukbd_softc*) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct ukbd_softc *sc = arg;

	FUNC0();

	sc->sc_time_ms += sc->sc_delay;
	sc->sc_delay = 0;

	FUNC3(sc);

	/* Make sure any leftover key events gets read out */
	FUNC2(sc);

	if (FUNC1(sc) || (sc->sc_inputs != 0)) {
		FUNC4(sc);
	}
}