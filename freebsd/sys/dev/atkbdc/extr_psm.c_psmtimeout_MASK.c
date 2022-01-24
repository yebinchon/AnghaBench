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
struct psm_softc {int /*<<< orphan*/  callout; scalar_t__ watchdog; int /*<<< orphan*/  kbdc; int /*<<< orphan*/  unit; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct psm_softc*) ; 
 int /*<<< orphan*/  hz ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct psm_softc*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct psm_softc *sc;
	int s;

	sc = (struct psm_softc *)arg;
	s = FUNC4();
	if (sc->watchdog && FUNC2(sc->kbdc, TRUE)) {
		FUNC0(6, (LOG_DEBUG, "psm%d: lost interrupt?\n", sc->unit));
		FUNC3(sc);
		FUNC2(sc->kbdc, FALSE);
	}
	sc->watchdog = TRUE;
	FUNC5(s);
	FUNC1(&sc->callout, hz, psmtimeout, sc);
}