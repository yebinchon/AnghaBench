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
struct dwc_otg_softc {int /*<<< orphan*/  sc_timer; scalar_t__ sc_timer_active; int /*<<< orphan*/  sc_bus; int /*<<< orphan*/  sc_tmr_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DWC_OTG_HOST_TIMER_RATE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc_otg_softc*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,void (*) (void*),struct dwc_otg_softc*) ; 

__attribute__((used)) static void
FUNC6(void *_sc)
{
	struct dwc_otg_softc *sc = _sc;

	FUNC1(&sc->sc_bus, MA_OWNED);

	FUNC0("\n");

	FUNC2(&sc->sc_bus);

	/* increment timer value */
	sc->sc_tmr_val++;

	/* enable SOF interrupt, which will poll jobs */
	FUNC4(sc);

	FUNC3(&sc->sc_bus);

	if (sc->sc_timer_active) {
		/* restart timer */
		FUNC5(&sc->sc_timer,
		    hz / (1000 / DWC_OTG_HOST_TIMER_RATE),
		    &dwc_otg_timer, sc);
	}
}