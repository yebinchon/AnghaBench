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
struct apm_softc {scalar_t__ initialized; int /*<<< orphan*/ * event_thread; int /*<<< orphan*/  mtx; int /*<<< orphan*/  cv; scalar_t__ running; scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PWAIT ; 
 struct apm_softc apm_softc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct apm_softc *sc = &apm_softc;

	FUNC0("called apm_event_disable()\n");

	if (sc == NULL || sc->initialized == 0)
		return;

	FUNC3(&sc->mtx);
	sc->active = 0;
	while (sc->running) {
		FUNC1(&sc->cv);
		FUNC2(sc->event_thread, &sc->mtx, PWAIT, "apmdie", 0);
	}
	FUNC4(&sc->mtx);
	sc->event_thread = NULL;
	return;
}