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
struct ieee80211com {struct ural_softc* ic_softc; } ;
struct ural_softc {int sc_detached; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_snd; int /*<<< orphan*/  sc_xfer; struct ieee80211com sc_ic; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ural_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ural_softc*) ; 
 int /*<<< orphan*/  URAL_N_TRANSFER ; 
 struct ural_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ural_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t self)
{
	struct ural_softc *sc = FUNC2(self);
	struct ieee80211com *ic = &sc->sc_ic;

	/* prevent further ioctls */
	FUNC0(sc);
	sc->sc_detached = 1;
	FUNC1(sc);

	/* stop all USB transfers */
	FUNC7(sc->sc_xfer, URAL_N_TRANSFER);

	/* free TX list, if any */
	FUNC0(sc);
	FUNC6(sc);
	FUNC1(sc);

	if (ic->ic_softc == sc)
		FUNC3(ic);
	FUNC4(&sc->sc_snd);
	FUNC5(&sc->sc_mtx);

	return (0);
}