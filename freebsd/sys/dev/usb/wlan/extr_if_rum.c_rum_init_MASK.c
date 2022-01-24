#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ieee80211com {scalar_t__ ic_opmode; scalar_t__ ic_promisc; int /*<<< orphan*/  ic_macaddr; int /*<<< orphan*/  ic_curchan; int /*<<< orphan*/  ic_vaps; } ;
struct rum_softc {int sc_running; scalar_t__ sc_clr_shkeys; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sta; TYPE_1__* wme_params; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int /*<<< orphan*/  iv_myaddr; } ;
struct TYPE_5__ {int val; int /*<<< orphan*/  reg; } ;
struct TYPE_4__ {int wmep_aifsn; int wmep_logcwmin; int wmep_logcwmax; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_M_HOSTAP ; 
 scalar_t__ IEEE80211_M_MONITOR ; 
 int RT2573_DROP_ACKCTS ; 
 int RT2573_DROP_CRC_ERROR ; 
 int RT2573_DROP_CTL ; 
 int RT2573_DROP_NOT_TO_ME ; 
 int RT2573_DROP_PHY_ERROR ; 
 int RT2573_DROP_TODS ; 
 int RT2573_DROP_VER_ERROR ; 
 int RT2573_HOST_READY ; 
 int /*<<< orphan*/  RT2573_MAC_CSR1 ; 
 int RT2573_RESET_ASIC ; 
 int RT2573_RESET_BBP ; 
 int /*<<< orphan*/  RT2573_STA_CSR0 ; 
 int /*<<< orphan*/  RT2573_TXRX_CSR0 ; 
 size_t RUM_BULK_RD ; 
 size_t RUM_BULK_WR ; 
 int /*<<< orphan*/  FUNC0 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rum_softc*) ; 
 struct ieee80211vap* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (struct rum_softc*) ; 
 int FUNC5 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rum_softc*) ; 
 TYPE_2__* rum_def_mac ; 
 int FUNC7 (struct rum_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rum_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct rum_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rum_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rum_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct rum_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18(struct rum_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211vap *vap = FUNC2(&ic->ic_vaps);
	uint32_t tmp;
	int i, ret;

	FUNC0(sc);
	if (sc->sc_running) {
		ret = 0;
		goto end;
	}

	/* initialize MAC registers to default values */
	for (i = 0; i < FUNC3(rum_def_mac); i++)
		FUNC15(sc, rum_def_mac[i].reg, rum_def_mac[i].val);

	/* reset some WME parameters to default values */
	sc->wme_params[0].wmep_aifsn = 2;
	sc->wme_params[0].wmep_logcwmin = 4;
	sc->wme_params[0].wmep_logcwmax = 10;

	/* set host ready */
	FUNC15(sc, RT2573_MAC_CSR1, RT2573_RESET_ASIC | RT2573_RESET_BBP);
	FUNC15(sc, RT2573_MAC_CSR1, 0);

	/* wait for BBP/RF to wakeup */
	if ((ret = FUNC5(sc)) != 0)
		goto end;

	if ((ret = FUNC4(sc)) != 0)
		goto end;

	/* select default channel */
	FUNC10(sc, ic->ic_curchan);
	FUNC9(sc);
	FUNC11(sc, ic->ic_curchan);

	/* clear STA registers */
	FUNC8(sc, RT2573_STA_CSR0, sc->sta, sizeof sc->sta);

	/* clear security registers (if required) */
	if (sc->sc_clr_shkeys == 0) {
		FUNC6(sc);
		sc->sc_clr_shkeys = 1;
	}

	FUNC12(sc, vap ? vap->iv_myaddr : ic->ic_macaddr);

	/* initialize ASIC */
	FUNC15(sc, RT2573_MAC_CSR1, RT2573_HOST_READY);

	/*
	 * Allocate Tx and Rx xfer queues.
	 */
	FUNC13(sc);

	/* update Rx filter */
	tmp = FUNC7(sc, RT2573_TXRX_CSR0) & 0xffff;

	tmp |= RT2573_DROP_PHY_ERROR | RT2573_DROP_CRC_ERROR;
	if (ic->ic_opmode != IEEE80211_M_MONITOR) {
		tmp |= RT2573_DROP_CTL | RT2573_DROP_VER_ERROR |
		       RT2573_DROP_ACKCTS;
		if (ic->ic_opmode != IEEE80211_M_HOSTAP)
			tmp |= RT2573_DROP_TODS;
		if (ic->ic_promisc == 0)
			tmp |= RT2573_DROP_NOT_TO_ME;
	}
	FUNC15(sc, RT2573_TXRX_CSR0, tmp);

	sc->sc_running = 1;
	FUNC17(sc->sc_xfer[RUM_BULK_WR]);
	FUNC16(sc->sc_xfer[RUM_BULK_RD]);

end:	FUNC1(sc);

	if (ret != 0)
		FUNC14(sc);

	return ret;
}