#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ic_oerrors; } ;
struct bwi_softc {scalar_t__ sc_tx_timer; int /*<<< orphan*/  sc_watchdog_timer; int /*<<< orphan*/  sc_restart_task; int /*<<< orphan*/  sc_tq; TYPE_1__ sc_ic; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct bwi_softc *sc;

	sc = arg;
	FUNC0(sc);
	if (sc->sc_tx_timer != 0 && --sc->sc_tx_timer == 0) {
		FUNC3(sc->sc_dev, "watchdog timeout\n");
		FUNC2(sc->sc_ic.ic_oerrors, 1);
		FUNC4(sc->sc_tq, &sc->sc_restart_task);
	}
	FUNC1(&sc->sc_watchdog_timer, hz, bwi_watchdog, sc);
}