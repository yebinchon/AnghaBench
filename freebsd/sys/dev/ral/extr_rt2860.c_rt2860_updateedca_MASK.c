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
struct rt2860_softc {int dummy; } ;
struct ieee80211com {struct rt2860_softc* ic_softc; } ;
struct chanAccParams {struct wmeParams* cap_wmeParams; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2860_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  RT2860_WMM_AIFSN_CFG ; 
 int /*<<< orphan*/  RT2860_WMM_CWMAX_CFG ; 
 int /*<<< orphan*/  RT2860_WMM_CWMIN_CFG ; 
 int /*<<< orphan*/  RT2860_WMM_TXOP0_CFG ; 
 int /*<<< orphan*/  RT2860_WMM_TXOP1_CFG ; 
 size_t WME_AC_BE ; 
 size_t WME_AC_BK ; 
 size_t WME_AC_VI ; 
 size_t WME_AC_VO ; 
 int WME_NUM_AC ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*,struct chanAccParams*) ; 

__attribute__((used)) static int
FUNC3(struct ieee80211com *ic)
{
	struct rt2860_softc *sc = ic->ic_softc;
	struct chanAccParams chp;
	const struct wmeParams *wmep;
	int aci;

	FUNC2(ic, &chp);

	wmep = chp.cap_wmeParams;

	/* update MAC TX configuration registers */
	for (aci = 0; aci < WME_NUM_AC; aci++) {
		FUNC0(sc, FUNC1(aci),
		    wmep[aci].wmep_logcwmax << 16 |
		    wmep[aci].wmep_logcwmin << 12 |
		    wmep[aci].wmep_aifsn  <<  8 |
		    wmep[aci].wmep_txopLimit);
	}

	/* update SCH/DMA registers too */
	FUNC0(sc, RT2860_WMM_AIFSN_CFG,
	    wmep[WME_AC_VO].wmep_aifsn  << 12 |
	    wmep[WME_AC_VI].wmep_aifsn  <<  8 |
	    wmep[WME_AC_BK].wmep_aifsn  <<  4 |
	    wmep[WME_AC_BE].wmep_aifsn);
	FUNC0(sc, RT2860_WMM_CWMIN_CFG,
	    wmep[WME_AC_VO].wmep_logcwmin << 12 |
	    wmep[WME_AC_VI].wmep_logcwmin <<  8 |
	    wmep[WME_AC_BK].wmep_logcwmin <<  4 |
	    wmep[WME_AC_BE].wmep_logcwmin);
	FUNC0(sc, RT2860_WMM_CWMAX_CFG,
	    wmep[WME_AC_VO].wmep_logcwmax << 12 |
	    wmep[WME_AC_VI].wmep_logcwmax <<  8 |
	    wmep[WME_AC_BK].wmep_logcwmax <<  4 |
	    wmep[WME_AC_BE].wmep_logcwmax);
	FUNC0(sc, RT2860_WMM_TXOP0_CFG,
	    wmep[WME_AC_BK].wmep_txopLimit << 16 |
	    wmep[WME_AC_BE].wmep_txopLimit);
	FUNC0(sc, RT2860_WMM_TXOP1_CFG,
	    wmep[WME_AC_VO].wmep_txopLimit << 16 |
	    wmep[WME_AC_VI].wmep_txopLimit);

	return 0;
}