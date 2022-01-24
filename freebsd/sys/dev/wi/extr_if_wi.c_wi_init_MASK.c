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
struct TYPE_2__ {int /*<<< orphan*/  ic_macaddr; } ;
struct wi_softc {int sc_enabled; int /*<<< orphan*/  sc_watchdog; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  sc_dev; TYPE_1__ sc_ic; int /*<<< orphan*/  sc_porttype; } ;

/* Variables and functions */
 int /*<<< orphan*/  WI_FLAGS_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct wi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct wi_softc*) ; 
 scalar_t__ FUNC4 (struct wi_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wi_softc*,int) ; 
 int /*<<< orphan*/  wi_watchdog ; 

void
FUNC6(struct wi_softc *sc)
{
	int wasenabled;

	FUNC0(sc);

	wasenabled = sc->sc_enabled;
	if (wasenabled)
		FUNC5(sc, 1);

	if (FUNC4(sc, sc->sc_porttype, 3,
	    sc->sc_ic.ic_macaddr) != 0) {
		FUNC2(sc->sc_dev, "interface not running\n");
		FUNC5(sc, 1);
		return;
	}

	sc->sc_flags |= WI_FLAGS_RUNNING;

	FUNC1(&sc->sc_watchdog, hz, wi_watchdog, sc);

	FUNC3(sc);			/* Enable desired port */
}