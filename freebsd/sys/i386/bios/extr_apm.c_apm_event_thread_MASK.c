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
struct apm_softc {int running; int /*<<< orphan*/  mtx; int /*<<< orphan*/  cv; int /*<<< orphan*/  bios_busy; int /*<<< orphan*/  suspend_countdown; scalar_t__ suspends; int /*<<< orphan*/  standby_countdown; scalar_t__ standbys; scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ apm_op_inprog ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct apm_softc apm_softc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct apm_softc *sc = &apm_softc;

	sc->running = 1;
	while (sc->active) {
		if (apm_op_inprog)
			FUNC2();
		if (sc->standbys && sc->standby_countdown-- <= 0)
			FUNC0();
		if (sc->suspends && sc->suspend_countdown-- <= 0)
			FUNC1();
		if (!sc->bios_busy)
			FUNC3();
		FUNC6(&sc->mtx);
		FUNC4(&sc->cv, &sc->mtx, 10 * hz / 9);
		FUNC7(&sc->mtx);
	}
	sc->running = 0;
	FUNC5(0);
}