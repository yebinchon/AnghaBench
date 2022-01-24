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
typedef  int uint8_t ;
struct wmeParams {int wmep_aifsn; int wmep_txopLimit; int wmep_logcwmin; int wmep_logcwmax; int wmep_acm; } ;
struct rtwn_softc {struct wmeParams* cap_wmeParams; } ;
struct ieee80211com {struct rtwn_softc* ic_softc; struct ieee80211_channel* ic_curchan; } ;
struct ieee80211_channel {int dummy; } ;
struct chanAccParams {int /*<<< orphan*/  cap_wmeParams; } ;

/* Variables and functions */
 int IEEE80211_DUR_OFDM_SIFS ; 
 int IEEE80211_DUR_SIFS ; 
 int FUNC0 (struct ieee80211com*) ; 
 scalar_t__ FUNC1 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*) ; 
 int /*<<< orphan*/  R92C_ACMHWCTRL ; 
 int /*<<< orphan*/  R92C_ACMHWCTRL_ACM_MASK ; 
 int R92C_ACMHWCTRL_EN ; 
 int /*<<< orphan*/  R92C_EDCA_PARAM_AIFS ; 
 int /*<<< orphan*/  R92C_EDCA_PARAM_ECWMAX ; 
 int /*<<< orphan*/  R92C_EDCA_PARAM_ECWMIN ; 
 int /*<<< orphan*/  R92C_EDCA_PARAM_TXOP ; 
 int /*<<< orphan*/  FUNC4 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_softc*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int WME_AC_BE ; 
 int WME_NUM_AC ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211com*,struct chanAccParams*) ; 
 int /*<<< orphan*/  FUNC8 (struct wmeParams*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * wme2reg ; 

__attribute__((used)) static int
FUNC11(struct ieee80211com *ic)
{
	struct chanAccParams chp;
	struct ieee80211_channel *c = ic->ic_curchan;
	struct rtwn_softc *sc = ic->ic_softc;
	struct wmeParams *wmep = sc->cap_wmeParams;
	uint8_t aifs, acm, slottime;
	int ac;

	FUNC7(ic, &chp);

	/* Prevent possible races. */
	FUNC2(ic);	/* XXX */
	FUNC4(sc);
	FUNC8(wmep, chp.cap_wmeParams, sizeof(sc->cap_wmeParams));
	FUNC5(sc);
	FUNC3(ic);

	acm = 0;
	slottime = FUNC0(ic);

	FUNC4(sc);
	for (ac = WME_AC_BE; ac < WME_NUM_AC; ac++) {
		/* AIFS[AC] = AIFSN[AC] * aSlotTime + aSIFSTime. */
		aifs = wmep[ac].wmep_aifsn * slottime +
		    (FUNC1(c) ?
			IEEE80211_DUR_OFDM_SIFS : IEEE80211_DUR_SIFS);
		FUNC10(sc, wme2reg[ac],
		    FUNC6(R92C_EDCA_PARAM_TXOP, wmep[ac].wmep_txopLimit) |
		    FUNC6(R92C_EDCA_PARAM_ECWMIN, wmep[ac].wmep_logcwmin) |
		    FUNC6(R92C_EDCA_PARAM_ECWMAX, wmep[ac].wmep_logcwmax) |
		    FUNC6(R92C_EDCA_PARAM_AIFS, aifs));
		if (ac != WME_AC_BE)
			acm |= wmep[ac].wmep_acm << ac;
	}

	if (acm != 0)
		acm |= R92C_ACMHWCTRL_EN;
	FUNC9(sc, R92C_ACMHWCTRL, R92C_ACMHWCTRL_ACM_MASK, acm);
	FUNC5(sc);

	return 0;
}