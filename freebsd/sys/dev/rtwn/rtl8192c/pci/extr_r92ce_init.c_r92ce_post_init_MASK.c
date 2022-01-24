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
struct rtwn_softc {int sc_flags; scalar_t__ sc_ratectl_sysctl; scalar_t__ sc_ratectl; struct r92c_softc* sc_priv; } ;
struct r92c_softc {int /*<<< orphan*/  rs_c2h_timeout; int /*<<< orphan*/  rs_c2h_report; } ;

/* Variables and functions */
 int R92C_BCN_MAX_ERR ; 
 int /*<<< orphan*/  R92C_FWHW_TXQ_CTRL ; 
 int R92C_FWHW_TXQ_CTRL_AMPDU_RTY_NEW ; 
 int RTWN_FW_LOADED ; 
 scalar_t__ RTWN_RATECTL_FW ; 
 scalar_t__ RTWN_RATECTL_NET80211 ; 
 scalar_t__ RTWN_RATECTL_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rtwn_softc*) ; 
 int /*<<< orphan*/  r92c_handle_c2h_report ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtwn_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 

void
FUNC6(struct rtwn_softc *sc)
{
	FUNC5(sc, R92C_FWHW_TXQ_CTRL,
	    0x1f00 | R92C_FWHW_TXQ_CTRL_AMPDU_RTY_NEW);

	FUNC4(sc, R92C_BCN_MAX_ERR, 0xff);

	/* Perform LO and IQ calibrations. */
	FUNC3(sc);
	/* Perform LC calibration. */
	FUNC1(sc);

	FUNC2(sc);

	/* Fix for lower temperature. */
	FUNC4(sc, 0x15, 0xe9);

#ifndef RTWN_WITHOUT_UCODE
	if (sc->sc_flags & RTWN_FW_LOADED) {
		struct r92c_softc *rs = sc->sc_priv;

		if (sc->sc_ratectl_sysctl == RTWN_RATECTL_FW) {
			/* XXX TODO: fix (see comment in r92cu_init.c) */
			sc->sc_ratectl = RTWN_RATECTL_NET80211;
		} else
			sc->sc_ratectl = sc->sc_ratectl_sysctl;

		/* Start C2H event handling. */
		FUNC0(&rs->rs_c2h_report, rs->rs_c2h_timeout,
		    r92c_handle_c2h_report, sc);
	} else
#endif
		sc->sc_ratectl = RTWN_RATECTL_NONE;
}