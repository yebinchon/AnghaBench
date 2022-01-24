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
struct rt2661_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  rxq; int /*<<< orphan*/  mgtq; int /*<<< orphan*/ * txq; int /*<<< orphan*/  sc_snd; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2661_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2661_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2661_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2661_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2661_softc*) ; 

int
FUNC8(void *xsc)
{
	struct rt2661_softc *sc = xsc;
	struct ieee80211com *ic = &sc->sc_ic;
	
	FUNC0(sc);
	FUNC7(sc);
	FUNC1(sc);

	FUNC2(ic);
	FUNC3(&sc->sc_snd);

	FUNC6(sc, &sc->txq[0]);
	FUNC6(sc, &sc->txq[1]);
	FUNC6(sc, &sc->txq[2]);
	FUNC6(sc, &sc->txq[3]);
	FUNC6(sc, &sc->mgtq);
	FUNC5(sc, &sc->rxq);

	FUNC4(&sc->sc_mtx);

	return 0;
}