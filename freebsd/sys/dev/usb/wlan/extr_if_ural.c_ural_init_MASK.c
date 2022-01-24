#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct ieee80211com {scalar_t__ ic_opmode; scalar_t__ ic_promisc; int /*<<< orphan*/  ic_macaddr; int /*<<< orphan*/  ic_curchan; int /*<<< orphan*/  ic_vaps; } ;
struct ural_softc {int sc_running; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  rx_ant; int /*<<< orphan*/  tx_ant; int /*<<< orphan*/  sta; int /*<<< orphan*/  sc_dev; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int /*<<< orphan*/  iv_myaddr; } ;
struct TYPE_3__ {int reg; int val; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_M_HOSTAP ; 
 scalar_t__ IEEE80211_M_MONITOR ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int RAL_BBP_AWAKE ; 
 int RAL_DROP_BAD_VERSION ; 
 int RAL_DROP_CRC ; 
 int RAL_DROP_CTL ; 
 int RAL_DROP_NOT_TO_ME ; 
 int RAL_DROP_PHY ; 
 int RAL_DROP_TODS ; 
 int RAL_HOST_READY ; 
 int /*<<< orphan*/  FUNC0 (struct ural_softc*,int /*<<< orphan*/ ) ; 
 int RAL_MAC_CSR1 ; 
 int /*<<< orphan*/  RAL_MAC_CSR17 ; 
 int RAL_RF_AWAKE ; 
 int /*<<< orphan*/  RAL_STA_CSR0 ; 
 int RAL_TXRX_CSR11 ; 
 int RAL_TXRX_CSR2 ; 
 struct ieee80211vap* FUNC1 (int /*<<< orphan*/ *) ; 
 size_t URAL_BULK_RD ; 
 size_t URAL_BULK_WR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct ural_softc*) ; 
 TYPE_1__* ural_def_mac ; 
 scalar_t__ FUNC5 (struct ural_softc*,int) ; 
 int FUNC6 (struct ural_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ural_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ural_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ural_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ural_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ural_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct ural_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ural_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct ural_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct ural_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(struct ural_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211vap *vap = FUNC1(&ic->ic_vaps);
	uint16_t tmp;
	int i, ntries;

	FUNC0(sc, MA_OWNED);

	FUNC11(sc);
	FUNC15(sc, 0x308, 0x00f0);	/* XXX magic */

	FUNC14(sc);

	/* initialize MAC registers to default values */
	for (i = 0; i < FUNC3(ural_def_mac); i++)
		FUNC15(sc, ural_def_mac[i].reg, ural_def_mac[i].val);

	/* wait for BBP and RF to wake up (this can take a long time!) */
	for (ntries = 0; ntries < 100; ntries++) {
		tmp = FUNC6(sc, RAL_MAC_CSR17);
		if ((tmp & (RAL_BBP_AWAKE | RAL_RF_AWAKE)) ==
		    (RAL_BBP_AWAKE | RAL_RF_AWAKE))
			break;
		if (FUNC5(sc, hz / 100))
			break;
	}
	if (ntries == 100) {
		FUNC2(sc->sc_dev,
		    "timeout waiting for BBP/RF to wakeup\n");
		goto fail;
	}

	/* we're ready! */
	FUNC15(sc, RAL_MAC_CSR1, RAL_HOST_READY);

	/* set basic rate set (will be updated later) */
	FUNC15(sc, RAL_TXRX_CSR11, 0x15f);

	if (FUNC4(sc) != 0)
		goto fail;

	FUNC8(sc, ic->ic_curchan);

	/* clear statistic registers (STA_CSR0 to STA_CSR10) */
	FUNC7(sc, RAL_STA_CSR0, sc->sta, sizeof sc->sta);

	FUNC12(sc, sc->tx_ant);
	FUNC10(sc, sc->rx_ant);

	FUNC9(sc, vap ? vap->iv_myaddr : ic->ic_macaddr);

	/*
	 * Allocate Tx and Rx xfer queues.
	 */
	FUNC13(sc);

	/* kick Rx */
	tmp = RAL_DROP_PHY | RAL_DROP_CRC;
	if (ic->ic_opmode != IEEE80211_M_MONITOR) {
		tmp |= RAL_DROP_CTL | RAL_DROP_BAD_VERSION;
		if (ic->ic_opmode != IEEE80211_M_HOSTAP)
			tmp |= RAL_DROP_TODS;
		if (ic->ic_promisc == 0)
			tmp |= RAL_DROP_NOT_TO_ME;
	}
	FUNC15(sc, RAL_TXRX_CSR2, tmp);

	sc->sc_running = 1;
	FUNC17(sc->sc_xfer[URAL_BULK_WR]);
	FUNC16(sc->sc_xfer[URAL_BULK_RD]);
	return;

fail:	FUNC14(sc);
}