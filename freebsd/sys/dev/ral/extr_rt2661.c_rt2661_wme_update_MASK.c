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
struct wmeParams {int wmep_txopLimit; int wmep_logcwmin; int wmep_logcwmax; int wmep_aifsn; } ;
struct rt2661_softc {int dummy; } ;
struct ieee80211com {struct rt2661_softc* ic_softc; } ;
struct chanAccParams {struct wmeParams* cap_wmeParams; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2661_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT2661_AC_TXOP_CSR0 ; 
 int /*<<< orphan*/  RT2661_AC_TXOP_CSR1 ; 
 int /*<<< orphan*/  RT2661_AIFSN_CSR ; 
 int /*<<< orphan*/  RT2661_CWMAX_CSR ; 
 int /*<<< orphan*/  RT2661_CWMIN_CSR ; 
 size_t WME_AC_BE ; 
 size_t WME_AC_BK ; 
 size_t WME_AC_VI ; 
 size_t WME_AC_VO ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*,struct chanAccParams*) ; 

__attribute__((used)) static int
FUNC2(struct ieee80211com *ic)
{
	struct rt2661_softc *sc = ic->ic_softc;
	struct chanAccParams chp;
	const struct wmeParams *wmep;

	FUNC1(ic, &chp);

	wmep = chp.cap_wmeParams;

	/* XXX: not sure about shifts. */
	/* XXX: the reference driver plays with AC_VI settings too. */

	/* update TxOp */
	FUNC0(sc, RT2661_AC_TXOP_CSR0,
	    wmep[WME_AC_BE].wmep_txopLimit << 16 |
	    wmep[WME_AC_BK].wmep_txopLimit);
	FUNC0(sc, RT2661_AC_TXOP_CSR1,
	    wmep[WME_AC_VI].wmep_txopLimit << 16 |
	    wmep[WME_AC_VO].wmep_txopLimit);

	/* update CWmin */
	FUNC0(sc, RT2661_CWMIN_CSR,
	    wmep[WME_AC_BE].wmep_logcwmin << 12 |
	    wmep[WME_AC_BK].wmep_logcwmin <<  8 |
	    wmep[WME_AC_VI].wmep_logcwmin <<  4 |
	    wmep[WME_AC_VO].wmep_logcwmin);

	/* update CWmax */
	FUNC0(sc, RT2661_CWMAX_CSR,
	    wmep[WME_AC_BE].wmep_logcwmax << 12 |
	    wmep[WME_AC_BK].wmep_logcwmax <<  8 |
	    wmep[WME_AC_VI].wmep_logcwmax <<  4 |
	    wmep[WME_AC_VO].wmep_logcwmax);

	/* update Aifsn */
	FUNC0(sc, RT2661_AIFSN_CSR,
	    wmep[WME_AC_BE].wmep_aifsn << 12 |
	    wmep[WME_AC_BK].wmep_aifsn <<  8 |
	    wmep[WME_AC_VI].wmep_aifsn <<  4 |
	    wmep[WME_AC_VO].wmep_aifsn);

	return 0;
}