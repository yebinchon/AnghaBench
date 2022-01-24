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
struct wmeParams {int wmep_logcwmax; int wmep_logcwmin; int wmep_aifsn; int wmep_txopLimit; } ;
struct run_softc {int dummy; } ;
struct ieee80211com {struct run_softc* ic_softc; } ;
struct chanAccParams {struct wmeParams* cap_wmeParams; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RT2860_WMM_AIFSN_CFG ; 
 int /*<<< orphan*/  RT2860_WMM_CWMAX_CFG ; 
 int /*<<< orphan*/  RT2860_WMM_CWMIN_CFG ; 
 int /*<<< orphan*/  RT2860_WMM_TXOP0_CFG ; 
 int /*<<< orphan*/  RT2860_WMM_TXOP1_CFG ; 
 int /*<<< orphan*/  RUN_DEBUG_USB ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct run_softc*) ; 
 size_t WME_AC_BE ; 
 size_t WME_AC_BK ; 
 size_t WME_AC_VI ; 
 size_t WME_AC_VO ; 
 int WME_NUM_AC ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211com*,struct chanAccParams*) ; 
 int FUNC5 (struct run_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct ieee80211com *ic)
{
	struct chanAccParams chp;
	struct run_softc *sc = ic->ic_softc;
	const struct wmeParams *ac;
	int aci, error = 0;

	FUNC4(ic, &chp);
	ac = chp.cap_wmeParams;

	/* update MAC TX configuration registers */
	FUNC2(sc);
	for (aci = 0; aci < WME_NUM_AC; aci++) {
		error = FUNC5(sc, FUNC0(aci),
		    ac[aci].wmep_logcwmax << 16 |
		    ac[aci].wmep_logcwmin << 12 |
		    ac[aci].wmep_aifsn    <<  8 |
		    ac[aci].wmep_txopLimit);
		if (error) goto err;
	}

	/* update SCH/DMA registers too */
	error = FUNC5(sc, RT2860_WMM_AIFSN_CFG,
	    ac[WME_AC_VO].wmep_aifsn  << 12 |
	    ac[WME_AC_VI].wmep_aifsn  <<  8 |
	    ac[WME_AC_BK].wmep_aifsn  <<  4 |
	    ac[WME_AC_BE].wmep_aifsn);
	if (error) goto err;
	error = FUNC5(sc, RT2860_WMM_CWMIN_CFG,
	    ac[WME_AC_VO].wmep_logcwmin << 12 |
	    ac[WME_AC_VI].wmep_logcwmin <<  8 |
	    ac[WME_AC_BK].wmep_logcwmin <<  4 |
	    ac[WME_AC_BE].wmep_logcwmin);
	if (error) goto err;
	error = FUNC5(sc, RT2860_WMM_CWMAX_CFG,
	    ac[WME_AC_VO].wmep_logcwmax << 12 |
	    ac[WME_AC_VI].wmep_logcwmax <<  8 |
	    ac[WME_AC_BK].wmep_logcwmax <<  4 |
	    ac[WME_AC_BE].wmep_logcwmax);
	if (error) goto err;
	error = FUNC5(sc, RT2860_WMM_TXOP0_CFG,
	    ac[WME_AC_BK].wmep_txopLimit << 16 |
	    ac[WME_AC_BE].wmep_txopLimit);
	if (error) goto err;
	error = FUNC5(sc, RT2860_WMM_TXOP1_CFG,
	    ac[WME_AC_VO].wmep_txopLimit << 16 |
	    ac[WME_AC_VI].wmep_txopLimit);

err:
	FUNC3(sc);
	if (error)
		FUNC1(sc, RUN_DEBUG_USB, "WME update failed\n");

	return (error);
}