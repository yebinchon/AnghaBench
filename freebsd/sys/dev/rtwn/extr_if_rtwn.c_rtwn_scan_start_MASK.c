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
struct rtwn_softc {scalar_t__ bcn_vaps; } ;
struct ieee80211com {struct rtwn_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92C_TXPAUSE ; 
 int /*<<< orphan*/  R92C_TX_QUEUE_BCN ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ieee80211com *ic)
{
	struct rtwn_softc *sc = ic->ic_softc;

	FUNC0(sc);
	/* Pause beaconing. */
	FUNC3(sc, R92C_TXPAUSE, 0, R92C_TX_QUEUE_BCN);
	/* Receive beacons / probe responses from any BSSID. */
	if (sc->bcn_vaps == 0)
		FUNC2(sc, 1);
	FUNC1(sc);
}