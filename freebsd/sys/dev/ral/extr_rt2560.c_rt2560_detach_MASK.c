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
struct ieee80211com {int dummy; } ;
struct rt2560_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  rxq; int /*<<< orphan*/  bcnq; int /*<<< orphan*/  prioq; int /*<<< orphan*/  atimq; int /*<<< orphan*/  txq; int /*<<< orphan*/  sc_snd; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2560_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2560_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2560_softc*) ; 

int
FUNC6(void *xsc)
{
	struct rt2560_softc *sc = xsc;
	struct ieee80211com *ic = &sc->sc_ic;
	
	FUNC5(sc);

	FUNC0(ic);
	FUNC1(&sc->sc_snd);

	FUNC4(sc, &sc->txq);
	FUNC4(sc, &sc->atimq);
	FUNC4(sc, &sc->prioq);
	FUNC4(sc, &sc->bcnq);
	FUNC3(sc, &sc->rxq);

	FUNC2(&sc->sc_mtx);

	return 0;
}