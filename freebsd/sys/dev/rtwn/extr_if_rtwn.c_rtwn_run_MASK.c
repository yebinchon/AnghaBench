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
typedef  int /*<<< orphan*/  uint8_t ;
struct rtwn_vap {scalar_t__ id; } ;
struct rtwn_softc {scalar_t__ vaps_running; scalar_t__ monvaps_running; int /*<<< orphan*/  sc_calib_to; int /*<<< orphan*/  thermal_meter; int /*<<< orphan*/  thcal_temp; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_pwrmode_init; } ;
struct ieee80211vap {int iv_opmode; int /*<<< orphan*/  iv_bss; struct ieee80211com* iv_ic; } ;
struct ieee80211com {scalar_t__ ic_bsschan; int ic_caps; } ;
struct ieee80211_node {scalar_t__ ni_chan; int ni_intval; int /*<<< orphan*/  ni_bssid; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IEEE80211_CHAN_ANYC ; 
 int IEEE80211_C_PMGT ; 
#define  IEEE80211_M_HOSTAP 130 
#define  IEEE80211_M_IBSS 129 
#define  IEEE80211_M_STA 128 
 int FUNC0 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  R92C_BCN_PSR_RPT ; 
 scalar_t__ R92C_MAC_SPEC_SIFS ; 
 int /*<<< orphan*/  R92C_MSR_ADHOC ; 
 int /*<<< orphan*/  R92C_MSR_AP ; 
 int /*<<< orphan*/  R92C_MSR_INFRA ; 
 scalar_t__ R92C_R2T_SIFS ; 
 int /*<<< orphan*/  R92C_RXFLTMAP2 ; 
 scalar_t__ R92C_SIFS_CCK ; 
 scalar_t__ R92C_SIFS_OFDM ; 
 scalar_t__ R92C_SPEC_SIFS ; 
 scalar_t__ R92C_T2T_SIFS ; 
 scalar_t__ R92C_TXPAUSE ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  RTWN_LED_LINK ; 
 int /*<<< orphan*/  RTWN_TEMP_MEASURED ; 
 struct rtwn_vap* FUNC4 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_node*) ; 
 struct ieee80211_node* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  rtwn_calib_to ; 
 int /*<<< orphan*/  rtwn_pwrmode_init ; 
 int /*<<< orphan*/  FUNC10 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtwn_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rtwn_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC14 (struct rtwn_softc*,struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC15 (struct rtwn_softc*,struct ieee80211vap*) ; 
 int FUNC16 (struct rtwn_softc*,struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC17 (struct rtwn_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC18 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC19(struct rtwn_softc *sc, struct ieee80211vap *vap)
{
	struct ieee80211com *ic = vap->iv_ic;
	struct rtwn_vap *uvp = FUNC4(vap);
	struct ieee80211_node *ni;
	uint8_t mode;
	int error;

	FUNC3(sc);

	error = 0;
	ni = FUNC8(vap->iv_bss);

	if (ic->ic_bsschan == IEEE80211_CHAN_ANYC ||
	    ni->ni_chan == IEEE80211_CHAN_ANYC) {
		error = EINVAL;
		goto fail;
	}

	switch (vap->iv_opmode) {
	case IEEE80211_M_STA:
		mode = R92C_MSR_INFRA;
		break;
	case IEEE80211_M_IBSS:
		mode = R92C_MSR_ADHOC;
		break;
	case IEEE80211_M_HOSTAP:
		mode = R92C_MSR_AP;
		break;
	default:
		FUNC1(0, ("undefined opmode %d\n", vap->iv_opmode));
		error = EINVAL;
		goto fail;
	}

	/* Set media status to 'Associated'. */
	FUNC13(sc, mode, uvp->id);

	/* Set AssocID. */
	/* XXX multi-vap? */
	FUNC18(sc, R92C_BCN_PSR_RPT,
	    0xc000 | FUNC0(ni));

	/* Set BSSID. */
	FUNC11(sc, ni->ni_bssid, uvp->id);

	/* Set beacon interval. */
	FUNC18(sc, FUNC2(uvp->id), ni->ni_intval);

	if (sc->vaps_running == sc->monvaps_running) {
		/* Enable Rx of data frames. */
		FUNC18(sc, R92C_RXFLTMAP2, 0xffff);

		/* Flush all AC queues. */
		FUNC17(sc, R92C_TXPAUSE, 0);
	}

#ifndef RTWN_WITHOUT_UCODE
	/* Upload (QoS) Null Data frame to firmware. */
	/* Note: do this for port 0 only. */
	if ((ic->ic_caps & IEEE80211_C_PMGT) != 0 &&
	    vap->iv_opmode == IEEE80211_M_STA && uvp->id == 0) {
		error = FUNC16(sc, vap);
		if (error != 0)
			goto fail;

		/* Setup power management. */
		/*
		 * NB: it will be enabled immediately - delay it,
		 * so 4-Way handshake will not be interrupted.
		 */
		FUNC5(&sc->sc_pwrmode_init, 5*hz,
		    rtwn_pwrmode_init, sc);
	}
#endif

	/* Enable TSF synchronization. */
	FUNC15(sc, vap);

	if (vap->iv_opmode == IEEE80211_M_HOSTAP ||
	    vap->iv_opmode == IEEE80211_M_IBSS) {
		error = FUNC14(sc, ni);
		if (error != 0) {
			FUNC6(sc->sc_dev,
			    "unable to push beacon into the chip, "
			    "error %d\n", error);
			goto fail;
		}
	}

	/* Set ACK preamble type. */
	FUNC10(sc);

	/* Set basic rates mask. */
	FUNC9(sc);

#ifdef RTWN_TODO
	rtwn_write_1(sc, R92C_SIFS_CCK + 1, 10);
	rtwn_write_1(sc, R92C_SIFS_OFDM + 1, 10);
	rtwn_write_1(sc, R92C_SPEC_SIFS + 1, 10);
	rtwn_write_1(sc, R92C_MAC_SPEC_SIFS + 1, 10);
	rtwn_write_1(sc, R92C_R2T_SIFS + 1, 10);
	rtwn_write_1(sc, R92C_T2T_SIFS + 1, 10);
#endif

	if (sc->vaps_running == sc->monvaps_running) {
		/* Reset temperature calibration state machine. */
		sc->sc_flags &= ~RTWN_TEMP_MEASURED;
		sc->thcal_temp = sc->thermal_meter;

		/* Start periodic calibration. */
		FUNC5(&sc->sc_calib_to, 2*hz, rtwn_calib_to,
		    sc);

		if (sc->vaps_running == 0) {
			/* Turn link LED on. */
			FUNC12(sc, RTWN_LED_LINK, 1);
		}
	}

fail:
	FUNC7(ni);

	return (error);
}