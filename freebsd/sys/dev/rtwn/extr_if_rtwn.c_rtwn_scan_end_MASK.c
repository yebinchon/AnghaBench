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
struct rtwn_softc {scalar_t__ bcn_vaps; scalar_t__ vaps_running; } ;
struct ieee80211com {scalar_t__ ic_promisc; struct rtwn_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92C_TXPAUSE ; 
 int /*<<< orphan*/  R92C_TX_QUEUE_BCN ; 
 int /*<<< orphan*/  RTWN_LED_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct ieee80211com *ic)
{
	struct rtwn_softc *sc = ic->ic_softc;

	FUNC0(sc);
	/* Restore limitations. */
	if (ic->ic_promisc == 0 && sc->bcn_vaps == 0)
		FUNC4(sc, 0);

	/* Restore LED state. */
	FUNC3(sc, RTWN_LED_LINK, (sc->vaps_running != 0));

	/* Restore basic rates mask. */
	FUNC2(sc);

	/* Resume beaconing. */
	FUNC5(sc, R92C_TXPAUSE, R92C_TX_QUEUE_BCN, 0);
	FUNC1(sc);
}