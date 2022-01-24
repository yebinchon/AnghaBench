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
struct ieee80211com {struct rum_softc* ic_softc; } ;
struct rum_softc {int sc_detached; int /*<<< orphan*/  sc_snd; int /*<<< orphan*/  cmdq_task; int /*<<< orphan*/  sc_xfer; struct ieee80211com sc_ic; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rum_softc*) ; 
 int /*<<< orphan*/  RUM_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC3 (struct rum_softc*) ; 
 struct rum_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211com*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t self)
{
	struct rum_softc *sc = FUNC4(self);
	struct ieee80211com *ic = &sc->sc_ic;

	/* Prevent further ioctls */
	FUNC1(sc);
	sc->sc_detached = 1;
	FUNC3(sc);

	/* stop all USB transfers */
	FUNC9(sc->sc_xfer, RUM_N_TRANSFER);

	/* free TX list, if any */
	FUNC1(sc);
	FUNC8(sc);
	FUNC3(sc);

	if (ic->ic_softc == sc) {
		FUNC5(ic, &sc->cmdq_task);
		FUNC6(ic);
	}

	FUNC7(&sc->sc_snd);
	FUNC0(sc);
	FUNC2(sc);

	return (0);
}