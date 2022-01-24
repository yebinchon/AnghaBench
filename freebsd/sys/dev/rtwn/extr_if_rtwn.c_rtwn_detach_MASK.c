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
struct ieee80211com {struct rtwn_softc* ic_softc; } ;
struct rtwn_softc {int sc_detached; int /*<<< orphan*/  cmdq_task; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*) ; 
 scalar_t__ FUNC3 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211com*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtwn_softc*) ; 

void
FUNC7(struct rtwn_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;

	if (ic->ic_softc == sc) {
		/* Stop command queue. */
		FUNC0(sc);
		sc->sc_detached = 1;
		FUNC1(sc);

		FUNC4(ic, &sc->cmdq_task);
		FUNC5(ic);
	}

	FUNC6(sc);
	if (FUNC3(sc))
		FUNC2(sc);
}