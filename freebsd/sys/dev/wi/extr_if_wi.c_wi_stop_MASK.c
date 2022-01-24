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
struct wi_softc {int sc_portnum; int /*<<< orphan*/  sc_flags; scalar_t__ sc_false_syns; scalar_t__ sc_tx_timer; int /*<<< orphan*/  sc_watchdog; scalar_t__ sc_enabled; scalar_t__ wi_gone; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int WI_CMD_DISABLE ; 
 int /*<<< orphan*/  WI_FLAGS_RUNNING ; 
 int /*<<< orphan*/  WI_INT_EN ; 
 int /*<<< orphan*/  FUNC1 (struct wi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wi_softc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct wi_softc *sc, int disable)
{

	FUNC1(sc);

	if (sc->sc_enabled && !sc->wi_gone) {
		FUNC0(sc, WI_INT_EN, 0);
		FUNC3(sc, WI_CMD_DISABLE | sc->sc_portnum, 0, 0, 0);
		if (disable)
			sc->sc_enabled = 0;
	} else if (sc->wi_gone && disable)	/* gone --> not enabled */
		sc->sc_enabled = 0;

	FUNC2(&sc->sc_watchdog);
	sc->sc_tx_timer = 0;
	sc->sc_false_syns = 0;

	sc->sc_flags &= ~WI_FLAGS_RUNNING;
}