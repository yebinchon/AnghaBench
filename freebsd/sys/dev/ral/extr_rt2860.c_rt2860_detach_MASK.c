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
struct rt2860_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  rxq; int /*<<< orphan*/ * txq; int /*<<< orphan*/  sc_snd; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2860_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2860_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2860_softc*) ; 

int
FUNC9(void *xsc)
{
	struct rt2860_softc *sc = xsc;
	struct ieee80211com *ic = &sc->sc_ic;
	int qid;

	FUNC0(sc);
	FUNC8(sc);
	FUNC1(sc);

	FUNC2(ic);
	FUNC3(&sc->sc_snd);
	for (qid = 0; qid < 6; qid++)
		FUNC7(sc, &sc->txq[qid]);
	FUNC5(sc, &sc->rxq);
	FUNC6(sc);

	FUNC4(&sc->sc_mtx);

	return 0;
}