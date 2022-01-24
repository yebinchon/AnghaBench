#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_12__ {int physaddr; } ;
struct TYPE_11__ {int physaddr; } ;
struct TYPE_10__ {int physaddr; } ;
struct TYPE_9__ {int physaddr; } ;
struct TYPE_8__ {int physaddr; } ;
struct ieee80211com {scalar_t__ ic_opmode; scalar_t__ ic_promisc; int /*<<< orphan*/  ic_curchan; int /*<<< orphan*/  ic_macaddr; int /*<<< orphan*/  ic_vaps; } ;
struct rt2560_softc {int /*<<< orphan*/  watchdog_ch; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  rx_ant; int /*<<< orphan*/  tx_ant; TYPE_5__ rxq; TYPE_4__ bcnq; TYPE_3__ atimq; TYPE_2__ prioq; TYPE_1__ txq; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int /*<<< orphan*/  iv_myaddr; } ;
struct TYPE_13__ {int val; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_M_HOSTAP ; 
 scalar_t__ IEEE80211_M_MBSS ; 
 scalar_t__ IEEE80211_M_MONITOR ; 
 int /*<<< orphan*/  FUNC0 (struct rt2560_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2560_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2560_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT2560_ARSP_PLCP_1 ; 
 int RT2560_ATIM_RING_COUNT ; 
 int /*<<< orphan*/  RT2560_CNT0 ; 
 int /*<<< orphan*/  RT2560_CNT4 ; 
 int /*<<< orphan*/  RT2560_CSR1 ; 
 int /*<<< orphan*/  RT2560_CSR7 ; 
 int /*<<< orphan*/  RT2560_CSR8 ; 
 int RT2560_DROP_CRC_ERROR ; 
 int RT2560_DROP_CTL ; 
 int RT2560_DROP_NOT_TO_ME ; 
 int RT2560_DROP_PHY_ERROR ; 
 int RT2560_DROP_TODS ; 
 int RT2560_DROP_VERSION_ERROR ; 
 int /*<<< orphan*/  RT2560_F_RUNNING ; 
 int RT2560_HOST_READY ; 
 int RT2560_INTR_MASK ; 
 int RT2560_PRIO_RING_COUNT ; 
 int RT2560_RESET_ASIC ; 
 int /*<<< orphan*/  RT2560_RXCSR0 ; 
 int /*<<< orphan*/  RT2560_RXCSR1 ; 
 int /*<<< orphan*/  RT2560_RXCSR2 ; 
 int RT2560_RX_DESC_SIZE ; 
 int RT2560_RX_RING_COUNT ; 
 int /*<<< orphan*/  RT2560_TXCSR2 ; 
 int /*<<< orphan*/  RT2560_TXCSR3 ; 
 int /*<<< orphan*/  RT2560_TXCSR4 ; 
 int /*<<< orphan*/  RT2560_TXCSR5 ; 
 int /*<<< orphan*/  RT2560_TXCSR6 ; 
 int RT2560_TX_DESC_SIZE ; 
 int RT2560_TX_RING_COUNT ; 
 struct ieee80211vap* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rt2560_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int FUNC5 (TYPE_6__*) ; 
 scalar_t__ FUNC6 (struct rt2560_softc*) ; 
 TYPE_6__* rt2560_def_mac ; 
 int /*<<< orphan*/  FUNC7 (struct rt2560_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2560_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rt2560_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rt2560_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rt2560_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct rt2560_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rt2560_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211com*) ; 
 int /*<<< orphan*/  rt2560_watchdog ; 

__attribute__((used)) static void
FUNC15(struct rt2560_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211vap *vap = FUNC3(&ic->ic_vaps);
	uint32_t tmp;
	int i;

	FUNC0(sc);

	FUNC11(sc);

	/* setup tx rings */
	tmp = RT2560_PRIO_RING_COUNT << 24 |
	      RT2560_ATIM_RING_COUNT << 16 |
	      RT2560_TX_RING_COUNT   <<  8 |
	      RT2560_TX_DESC_SIZE;

	/* rings must be initialized in this exact order */
	FUNC2(sc, RT2560_TXCSR2, tmp);
	FUNC2(sc, RT2560_TXCSR3, sc->txq.physaddr);
	FUNC2(sc, RT2560_TXCSR5, sc->prioq.physaddr);
	FUNC2(sc, RT2560_TXCSR4, sc->atimq.physaddr);
	FUNC2(sc, RT2560_TXCSR6, sc->bcnq.physaddr);

	/* setup rx ring */
	tmp = RT2560_RX_RING_COUNT << 8 | RT2560_RX_DESC_SIZE;

	FUNC2(sc, RT2560_RXCSR1, tmp);
	FUNC2(sc, RT2560_RXCSR2, sc->rxq.physaddr);

	/* initialize MAC registers to default values */
	for (i = 0; i < FUNC5(rt2560_def_mac); i++)
		FUNC2(sc, rt2560_def_mac[i].reg, rt2560_def_mac[i].val);

	FUNC8(sc, vap ? vap->iv_myaddr : ic->ic_macaddr);

	/* set basic rate set (will be updated later) */
	FUNC2(sc, RT2560_ARSP_PLCP_1, 0x153);

	FUNC14(ic);
	FUNC13(sc);
	FUNC12(sc, 0, 0);

	FUNC2(sc, RT2560_CSR1, RT2560_RESET_ASIC);
	FUNC2(sc, RT2560_CSR1, RT2560_HOST_READY);

	if (FUNC6(sc) != 0) {
		FUNC11(sc);
		return;
	}

	FUNC10(sc, sc->tx_ant);
	FUNC9(sc, sc->rx_ant);

	/* set default BSS channel */
	FUNC7(sc, ic->ic_curchan);

	/* kick Rx */
	tmp = RT2560_DROP_PHY_ERROR | RT2560_DROP_CRC_ERROR;
	if (ic->ic_opmode != IEEE80211_M_MONITOR) {
		tmp |= RT2560_DROP_CTL | RT2560_DROP_VERSION_ERROR;
		if (ic->ic_opmode != IEEE80211_M_HOSTAP &&
		    ic->ic_opmode != IEEE80211_M_MBSS)
			tmp |= RT2560_DROP_TODS;
		if (ic->ic_promisc == 0)
			tmp |= RT2560_DROP_NOT_TO_ME;
	}
	FUNC2(sc, RT2560_RXCSR0, tmp);

	/* clear old FCS and Rx FIFO errors */
	FUNC1(sc, RT2560_CNT0);
	FUNC1(sc, RT2560_CNT4);

	/* clear any pending interrupts */
	FUNC2(sc, RT2560_CSR7, 0xffffffff);

	/* enable interrupts */
	FUNC2(sc, RT2560_CSR8, RT2560_INTR_MASK);

	sc->sc_flags |= RT2560_F_RUNNING;

	FUNC4(&sc->watchdog_ch, hz, rt2560_watchdog, sc);
}