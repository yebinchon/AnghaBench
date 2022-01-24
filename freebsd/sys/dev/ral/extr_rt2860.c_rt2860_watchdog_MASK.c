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
struct rt2860_softc {int sc_flags; scalar_t__ sc_tx_timer; int /*<<< orphan*/  watchdog_ch; TYPE_1__ sc_ic; int /*<<< orphan*/  sc_dev; scalar_t__ sc_invalid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2860_softc*) ; 
 int RT2860_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC5 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2860_softc*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct rt2860_softc *sc = arg;

	FUNC1(sc);

	FUNC0(sc->sc_flags & RT2860_RUNNING, ("not running"));

	if (sc->sc_invalid)		/* card ejected */
		return;

	if (sc->sc_tx_timer > 0 && --sc->sc_tx_timer == 0) {
		FUNC4(sc->sc_dev, "device timeout\n");
		FUNC6(sc);
		FUNC5(sc);
		FUNC3(sc->sc_ic.ic_oerrors, 1);
		return;
	}
	FUNC2(&sc->watchdog_ch, hz, rt2860_watchdog, sc);
}