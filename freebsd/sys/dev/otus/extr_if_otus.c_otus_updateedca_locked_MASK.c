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
struct wmeParams {int wmep_txopLimit; int /*<<< orphan*/  wmep_aifsn; int /*<<< orphan*/  wmep_logcwmin; int /*<<< orphan*/  wmep_logcwmax; } ;
struct ieee80211com {int dummy; } ;
struct otus_softc {struct ieee80211com sc_ic; } ;
struct chanAccParams {struct wmeParams* cap_wmeParams; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AR_MAC_REG_AC0_CW ; 
 int /*<<< orphan*/  AR_MAC_REG_AC1_AC0_AIFS ; 
 int /*<<< orphan*/  AR_MAC_REG_AC1_AC0_TXOP ; 
 int /*<<< orphan*/  AR_MAC_REG_AC1_CW ; 
 int /*<<< orphan*/  AR_MAC_REG_AC2_CW ; 
 int /*<<< orphan*/  AR_MAC_REG_AC3_AC2_AIFS ; 
 int /*<<< orphan*/  AR_MAC_REG_AC3_AC2_TXOP ; 
 int /*<<< orphan*/  AR_MAC_REG_AC3_CW ; 
 int /*<<< orphan*/  AR_MAC_REG_AC4_CW ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct otus_softc*) ; 
 size_t WME_AC_BE ; 
 size_t WME_AC_BK ; 
 size_t WME_AC_VI ; 
 size_t WME_AC_VO ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*,struct chanAccParams*) ; 
 int /*<<< orphan*/  FUNC4 (struct otus_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct otus_softc*) ; 

__attribute__((used)) static void
FUNC6(struct otus_softc *sc)
{
#define EXP2(val)	((1 << (val)) - 1)
#define AIFS(val)	((val) * 9 + 10)
	struct chanAccParams chp;
	struct ieee80211com *ic = &sc->sc_ic;
	const struct wmeParams *edca;

	FUNC3(ic, &chp);

	FUNC2(sc);

	edca = chp.cap_wmeParams;

	/* Set CWmin/CWmax values. */
	FUNC4(sc, AR_MAC_REG_AC0_CW,
	    EXP2(edca[WME_AC_BE].wmep_logcwmax) << 16 |
	    EXP2(edca[WME_AC_BE].wmep_logcwmin));
	FUNC4(sc, AR_MAC_REG_AC1_CW,
	    EXP2(edca[WME_AC_BK].wmep_logcwmax) << 16 |
	    EXP2(edca[WME_AC_BK].wmep_logcwmin));
	FUNC4(sc, AR_MAC_REG_AC2_CW,
	    EXP2(edca[WME_AC_VI].wmep_logcwmax) << 16 |
	    EXP2(edca[WME_AC_VI].wmep_logcwmin));
	FUNC4(sc, AR_MAC_REG_AC3_CW,
	    EXP2(edca[WME_AC_VO].wmep_logcwmax) << 16 |
	    EXP2(edca[WME_AC_VO].wmep_logcwmin));
	FUNC4(sc, AR_MAC_REG_AC4_CW,		/* Special TXQ. */
	    EXP2(edca[WME_AC_VO].wmep_logcwmax) << 16 |
	    EXP2(edca[WME_AC_VO].wmep_logcwmin));

	/* Set AIFSN values. */
	FUNC4(sc, AR_MAC_REG_AC1_AC0_AIFS,
	    AIFS(edca[WME_AC_VI].wmep_aifsn) << 24 |
	    AIFS(edca[WME_AC_BK].wmep_aifsn) << 12 |
	    AIFS(edca[WME_AC_BE].wmep_aifsn));
	FUNC4(sc, AR_MAC_REG_AC3_AC2_AIFS,
	    AIFS(edca[WME_AC_VO].wmep_aifsn) << 16 |	/* Special TXQ. */
	    AIFS(edca[WME_AC_VO].wmep_aifsn) <<  4 |
	    AIFS(edca[WME_AC_VI].wmep_aifsn) >>  8);

	/* Set TXOP limit. */
	FUNC4(sc, AR_MAC_REG_AC1_AC0_TXOP,
	    edca[WME_AC_BK].wmep_txopLimit << 16 |
	    edca[WME_AC_BE].wmep_txopLimit);
	FUNC4(sc, AR_MAC_REG_AC3_AC2_TXOP,
	    edca[WME_AC_VO].wmep_txopLimit << 16 |
	    edca[WME_AC_VI].wmep_txopLimit);

	/* XXX ACK policy? */

	(void)FUNC5(sc);

#undef AIFS
#undef EXP2
}