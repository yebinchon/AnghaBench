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
typedef  int /*<<< orphan*/  u_int ;
struct rtwn_softc {int nrxchains; struct r92c_softc* sc_priv; } ;
struct r92c_softc {int /*<<< orphan*/ * rf_chnlbw; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  R92C_RF_CHNLBW ; 
 int /*<<< orphan*/  R92C_RF_CHNLBW_CHNL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtwn_softc*,struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtwn_softc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(struct rtwn_softc *sc, struct ieee80211_channel *c)
{
	struct r92c_softc *rs = sc->sc_priv;
	u_int chan;
	int i;

	chan = FUNC5(c);

	/* Set Tx power for this new channel. */
	FUNC4(sc, c);

	for (i = 0; i < sc->nrxchains; i++) {
		FUNC7(sc, i, R92C_RF_CHNLBW,
		    FUNC2(rs->rf_chnlbw[i], R92C_RF_CHNLBW_CHNL, chan));
	}
	if (FUNC0(c))
		FUNC3(sc, chan, FUNC1(c));
	else
		FUNC6(sc, chan);
}