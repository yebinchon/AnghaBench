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
struct ieee80211com {int /*<<< orphan*/ * ic_curchan; } ;
struct ath_softc {int sc_rx_stopped; int sc_rx_resetted; scalar_t__ sc_resume_up; struct ath_hal* sc_ah; scalar_t__ sc_tdma; scalar_t__ sc_hasenforcetxop; int /*<<< orphan*/ * sc_curchan; int /*<<< orphan*/  sc_opmode; int /*<<< orphan*/  sc_cur_rxchainmask; int /*<<< orphan*/  sc_cur_txchainmask; struct ieee80211com sc_ic; } ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  HAL_LED_INIT ; 
 int /*<<< orphan*/  HAL_PM_AWAKE ; 
 int /*<<< orphan*/  HAL_RESET_NORMAL ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hal*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct ath_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct ath_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct ieee80211com*) ; 

void
FUNC20(struct ath_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct ath_hal *ah = sc->sc_ah;
	HAL_STATUS status;

	FUNC6(ah, 0, 0);

	/*
	 * Must reset the chip before we reload the
	 * keycache as we were powered down on suspend.
	 */
	FUNC18(sc,
	    sc->sc_curchan != NULL ? sc->sc_curchan : ic->ic_curchan);
	FUNC8(sc->sc_ah, sc->sc_cur_txchainmask,
	    sc->sc_cur_rxchainmask);

	/* Ensure we set the current power state to on */
	FUNC0(sc);
	FUNC15(sc, HAL_PM_AWAKE);
	FUNC13(sc, HAL_PM_AWAKE);
	FUNC14(sc, HAL_PM_AWAKE, 1);
	FUNC3(sc);

	FUNC7(ah, sc->sc_opmode,
	    sc->sc_curchan != NULL ? sc->sc_curchan : ic->ic_curchan,
	    AH_FALSE, HAL_RESET_NORMAL, &status);
	FUNC16(sc);

	FUNC1(sc);
	sc->sc_rx_stopped = 1;
	sc->sc_rx_resetted = 1;
	FUNC2(sc);

	/* Let DFS at it in case it's a DFS channel */
	FUNC5(sc, ic->ic_curchan);

	/* Let spectral at in case spectral is enabled */
	FUNC17(sc, ic->ic_curchan);

	/*
	 * Let bluetooth coexistence at in case it's needed for this channel
	 */
	FUNC4(sc, ic->ic_curchan);

	/*
	 * If we're doing TDMA, enforce the TXOP limitation for chips that
	 * support it.
	 */
	if (sc->sc_hasenforcetxop && sc->sc_tdma)
		FUNC9(sc->sc_ah, 1);
	else
		FUNC9(sc->sc_ah, 0);

	/* Restore the LED configuration */
	FUNC11(sc);
	FUNC10(ah, HAL_LED_INIT);

	if (sc->sc_resume_up)
		FUNC19(ic);

	FUNC0(sc);
	FUNC12(sc);
	FUNC3(sc);

	/* XXX beacons ? */
}