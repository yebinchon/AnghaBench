#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_7__ {int paddr; } ;
struct ieee80211com {int /*<<< orphan*/  ic_curchan; int /*<<< orphan*/  ic_macaddr; int /*<<< orphan*/  ic_vaps; } ;
struct rt2860_softc {int* txpow20mhz; int mac_ver; int sc_flags; scalar_t__ rf_rev; int* led; int nrxchains; int ntxchains; int pslevel; int /*<<< orphan*/  watchdog_ch; TYPE_3__* bbp; int /*<<< orphan*/  sc_dev; TYPE_2__ rxq; TYPE_1__* txq; scalar_t__ rfswitch; struct ieee80211com sc_ic; } ;
struct rt2860_rxwi {int dummy; } ;
struct ieee80211vap {int /*<<< orphan*/  iv_myaddr; } ;
struct TYPE_9__ {int val; int /*<<< orphan*/  reg; } ;
struct TYPE_8__ {int reg; int val; } ;
struct TYPE_6__ {int paddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IEEE80211_RTS_DEFAULT ; 
 int MCLBYTES ; 
 int /*<<< orphan*/  FUNC1 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2860_softc*) ; 
 int FUNC3 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2860_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2860_softc*,int /*<<< orphan*/ ,int) ; 
 int RT2860_ADVANCED_PS ; 
 int RT2860_BBP_HRST ; 
 int /*<<< orphan*/  RT2860_DELAY_INT_CFG ; 
 int RT2860_DLY_PAPE_EN_SHIFT ; 
 int /*<<< orphan*/  RT2860_GPIO_CTRL ; 
 int /*<<< orphan*/  RT2860_H2M_BBPAGENT ; 
 int /*<<< orphan*/  RT2860_H2M_MAILBOX ; 
 int /*<<< orphan*/  RT2860_INT_MASK ; 
 int /*<<< orphan*/  RT2860_INT_STATUS ; 
 int RT2860_IO_RA_PE ; 
 int RT2860_IO_RF_PE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT2860_LED_RADIO ; 
 int RT2860_MAC_SRST ; 
 int /*<<< orphan*/  RT2860_MAC_STATUS_REG ; 
 int /*<<< orphan*/  RT2860_MAC_SYS_CTRL ; 
 int /*<<< orphan*/  RT2860_MAX_LEN_CFG ; 
 int /*<<< orphan*/  RT2860_MCU_CMD_LED1 ; 
 int /*<<< orphan*/  RT2860_MCU_CMD_LED2 ; 
 int /*<<< orphan*/  RT2860_MCU_CMD_LED3 ; 
 int /*<<< orphan*/  RT2860_MCU_CMD_PSLEVEL ; 
 int /*<<< orphan*/  RT2860_MCU_CMD_RFRESET ; 
 int /*<<< orphan*/  RT2860_MCU_CMD_SLEEP ; 
 int /*<<< orphan*/  RT2860_MCU_CMD_WAKEUP ; 
 int RT2860_PCIE ; 
 int /*<<< orphan*/  RT2860_PCI_CFG ; 
 int RT2860_PCI_CFG_PCI ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT2860_PWR_PIN_CFG ; 
 int RT2860_RST_DRX_IDX0 ; 
 int RT2860_RST_DTX_IDX0 ; 
 int RT2860_RST_DTX_IDX1 ; 
 int RT2860_RST_DTX_IDX2 ; 
 int RT2860_RST_DTX_IDX3 ; 
 int RT2860_RST_DTX_IDX4 ; 
 int RT2860_RST_DTX_IDX5 ; 
 int RT2860_RUNNING ; 
 int /*<<< orphan*/  RT2860_RX_BASE_PTR ; 
 int /*<<< orphan*/  RT2860_RX_CALC_IDX ; 
 int RT2860_RX_DMA_BUSY ; 
 int RT2860_RX_DMA_EN ; 
 int /*<<< orphan*/  RT2860_RX_MAX_CNT ; 
 int RT2860_RX_RING_COUNT ; 
 int RT2860_RX_STATUS_BUSY ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT2860_SKEY_MODE_0_7 ; 
 int /*<<< orphan*/  RT2860_SYS_CTRL ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int RT2860_TX_DMA_BUSY ; 
 int RT2860_TX_DMA_EN ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int RT2860_TX_RING_COUNT ; 
 int /*<<< orphan*/  RT2860_TX_RTS_CFG ; 
 int RT2860_TX_STATUS_BUSY ; 
 int /*<<< orphan*/  RT2860_TX_SW_CFG0 ; 
 int RT2860_TX_WB_DDONE ; 
 int /*<<< orphan*/  RT2860_US_CYC_CNT ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT2860_WPDMA_GLO_CFG ; 
 int /*<<< orphan*/  RT2860_WPDMA_RST_IDX ; 
 scalar_t__ RT3070_RF_2020 ; 
 scalar_t__ RT3070_RF_3020 ; 
 scalar_t__ RT3070_RF_3320 ; 
 struct ieee80211vap* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int FUNC18 (TYPE_4__*) ; 
 int FUNC19 (struct rt2860_softc*) ; 
 TYPE_4__* rt2860_def_mac ; 
 int FUNC20 (struct rt2860_softc*) ; 
 int FUNC21 (struct rt2860_softc*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct rt2860_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC23 (struct rt2860_softc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC24 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC27 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int FUNC28 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC29 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  rt2860_watchdog ; 
 int FUNC30 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC31 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC32 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC33 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC35 (struct rt2860_softc*) ; 

__attribute__((used)) static void
FUNC36(struct rt2860_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211vap *vap = FUNC15(&ic->ic_vaps);
	uint32_t tmp;
	uint8_t bbp1, bbp3;
	int i, qid, ridx, ntries, error;

	FUNC2(sc);

	if (sc->rfswitch) {
		/* hardware has a radio switch on GPIO pin 2 */
		if (!(FUNC3(sc, RT2860_GPIO_CTRL) & (1 << 2))) {
			FUNC17(sc->sc_dev,
			    "radio is disabled by hardware switch\n");
#ifdef notyet
			rt2860_stop_locked(sc);
			return;
#endif
		}
	}
	FUNC5(sc, RT2860_PWR_PIN_CFG, RT2860_IO_RA_PE);

	/* disable DMA */
	tmp = FUNC3(sc, RT2860_WPDMA_GLO_CFG);
	tmp &= ~(RT2860_RX_DMA_BUSY | RT2860_RX_DMA_EN | RT2860_TX_DMA_BUSY |
	    RT2860_TX_DMA_EN);
	tmp |= RT2860_TX_WB_DDONE;
	FUNC5(sc, RT2860_WPDMA_GLO_CFG, tmp);

	/* reset DMA indexes */
	FUNC5(sc, RT2860_WPDMA_RST_IDX, RT2860_RST_DRX_IDX0 |
	    RT2860_RST_DTX_IDX5 | RT2860_RST_DTX_IDX4 | RT2860_RST_DTX_IDX3 |
	    RT2860_RST_DTX_IDX2 | RT2860_RST_DTX_IDX1 | RT2860_RST_DTX_IDX0);

	/* PBF hardware reset */
	FUNC5(sc, RT2860_SYS_CTRL, 0xe1f);
	FUNC1(sc);
	FUNC5(sc, RT2860_SYS_CTRL, 0xe00);

	if ((error = FUNC20(sc)) != 0) {
		FUNC17(sc->sc_dev, "could not load 8051 microcode\n");
		FUNC26(sc);
		return;
	}

	FUNC25(sc, vap ? vap->iv_myaddr : ic->ic_macaddr);

	/* init Tx power for all Tx rates (from EEPROM) */
	for (ridx = 0; ridx < 5; ridx++) {
		if (sc->txpow20mhz[ridx] == 0xffffffff)
			continue;
		FUNC5(sc, FUNC12(ridx), sc->txpow20mhz[ridx]);
	}

	for (ntries = 0; ntries < 100; ntries++) {
		tmp = FUNC3(sc, RT2860_WPDMA_GLO_CFG);
		if ((tmp & (RT2860_TX_DMA_BUSY | RT2860_RX_DMA_BUSY)) == 0)
			break;
		FUNC0(1000);
	}
	if (ntries == 100) {
		FUNC17(sc->sc_dev, "timeout waiting for DMA engine\n");
		FUNC26(sc);
		return;
	}
	tmp &= ~(RT2860_RX_DMA_BUSY | RT2860_RX_DMA_EN | RT2860_TX_DMA_BUSY |
	    RT2860_TX_DMA_EN);
	tmp |= RT2860_TX_WB_DDONE;
	FUNC5(sc, RT2860_WPDMA_GLO_CFG, tmp);

	/* reset Rx ring and all 6 Tx rings */
	FUNC5(sc, RT2860_WPDMA_RST_IDX, 0x1003f);

	/* PBF hardware reset */
	FUNC5(sc, RT2860_SYS_CTRL, 0xe1f);
	FUNC1(sc);
	FUNC5(sc, RT2860_SYS_CTRL, 0xe00);

	FUNC5(sc, RT2860_PWR_PIN_CFG, RT2860_IO_RA_PE | RT2860_IO_RF_PE);

	FUNC5(sc, RT2860_MAC_SYS_CTRL, RT2860_BBP_HRST | RT2860_MAC_SRST);
	FUNC1(sc);
	FUNC5(sc, RT2860_MAC_SYS_CTRL, 0);

	for (i = 0; i < FUNC18(rt2860_def_mac); i++)
		FUNC5(sc, rt2860_def_mac[i].reg, rt2860_def_mac[i].val);
	if (sc->mac_ver >= 0x5390)
		FUNC5(sc, RT2860_TX_SW_CFG0, 0x00000404);
	else if (sc->mac_ver >= 0x3071) {
		/* set delay of PA_PE assertion to 1us (unit of 0.25us) */
		FUNC5(sc, RT2860_TX_SW_CFG0,
		    4 << RT2860_DLY_PAPE_EN_SHIFT);
	}

	if (!(FUNC3(sc, RT2860_PCI_CFG) & RT2860_PCI_CFG_PCI)) {
		sc->sc_flags |= RT2860_PCIE;
		/* PCIe has different clock cycle count than PCI */
		tmp = FUNC3(sc, RT2860_US_CYC_CNT);
		tmp = (tmp & ~0xff) | 0x7d;
		FUNC5(sc, RT2860_US_CYC_CNT, tmp);
	}

	/* wait while MAC is busy */
	for (ntries = 0; ntries < 100; ntries++) {
		if (!(FUNC3(sc, RT2860_MAC_STATUS_REG) &
		    (RT2860_RX_STATUS_BUSY | RT2860_TX_STATUS_BUSY)))
			break;
		FUNC0(1000);
	}
	if (ntries == 100) {
		FUNC17(sc->sc_dev, "timeout waiting for MAC\n");
		FUNC26(sc);
		return;
	}

	/* clear Host to MCU mailbox */
	FUNC5(sc, RT2860_H2M_BBPAGENT, 0);
	FUNC5(sc, RT2860_H2M_MAILBOX, 0);

	FUNC23(sc, RT2860_MCU_CMD_RFRESET, 0, 0);
	FUNC0(1000);

	if ((error = FUNC19(sc)) != 0) {
		FUNC26(sc);
		return;
	}

	/* clear RX WCID search table */
	FUNC4(sc, FUNC14(0), 0, 512);
	/* clear pairwise key table */
	FUNC4(sc, FUNC7(0), 0, 2048);
	/* clear IV/EIV table */
	FUNC4(sc, FUNC6(0), 0, 512);
	/* clear WCID attribute table */
	FUNC4(sc, FUNC13(0), 0, 256);
	/* clear shared key table */
	FUNC4(sc, FUNC8(0, 0), 0, 8 * 32);
	/* clear shared key mode */
	FUNC4(sc, RT2860_SKEY_MODE_0_7, 0, 4);

	/* init Tx rings (4 EDCAs + HCCA + Mgt) */
	for (qid = 0; qid < 6; qid++) {
		FUNC5(sc, FUNC9(qid), sc->txq[qid].paddr);
		FUNC5(sc, FUNC11(qid), RT2860_TX_RING_COUNT);
		FUNC5(sc, FUNC10(qid), 0);
	}

	/* init Rx ring */
	FUNC5(sc, RT2860_RX_BASE_PTR, sc->rxq.paddr);
	FUNC5(sc, RT2860_RX_MAX_CNT, RT2860_RX_RING_COUNT);
	FUNC5(sc, RT2860_RX_CALC_IDX, RT2860_RX_RING_COUNT - 1);

	/* setup maximum buffer sizes */
	FUNC5(sc, RT2860_MAX_LEN_CFG, 1 << 12 |
	    (MCLBYTES - sizeof (struct rt2860_rxwi) - 2));

	for (ntries = 0; ntries < 100; ntries++) {
		tmp = FUNC3(sc, RT2860_WPDMA_GLO_CFG);
		if ((tmp & (RT2860_TX_DMA_BUSY | RT2860_RX_DMA_BUSY)) == 0)
			break;
		FUNC0(1000);
	}
	if (ntries == 100) {
		FUNC17(sc->sc_dev, "timeout waiting for DMA engine\n");
		FUNC26(sc);
		return;
	}
	tmp &= ~(RT2860_RX_DMA_BUSY | RT2860_RX_DMA_EN | RT2860_TX_DMA_BUSY |
	    RT2860_TX_DMA_EN);
	tmp |= RT2860_TX_WB_DDONE;
	FUNC5(sc, RT2860_WPDMA_GLO_CFG, tmp);

	/* disable interrupts mitigation */
	FUNC5(sc, RT2860_DELAY_INT_CFG, 0);

	/* write vendor-specific BBP values (from EEPROM) */
	for (i = 0; i < 8; i++) {
		if (sc->bbp[i].reg == 0 || sc->bbp[i].reg == 0xff)
			continue;
		FUNC22(sc, sc->bbp[i].reg, sc->bbp[i].val);
	}

	/* select Main antenna for 1T1R devices */
	if (sc->rf_rev == RT3070_RF_2020 ||
	    sc->rf_rev == RT3070_RF_3020 ||
	    sc->rf_rev == RT3070_RF_3320 ||
	    sc->mac_ver == 0x5390)
		FUNC33(sc, 0);

	/* send LEDs operating mode to microcontroller */
	FUNC23(sc, RT2860_MCU_CMD_LED1, sc->led[0], 0);
	FUNC23(sc, RT2860_MCU_CMD_LED2, sc->led[1], 0);
	FUNC23(sc, RT2860_MCU_CMD_LED3, sc->led[2], 0);

	if (sc->mac_ver >= 0x5390)
		FUNC34(sc);
	else if (sc->mac_ver >= 0x3071) {
		if ((error = FUNC30(sc)) != 0) {
			FUNC26(sc);
			return;
		}
	}

	FUNC23(sc, RT2860_MCU_CMD_SLEEP, 0x02ff, 1);
	FUNC23(sc, RT2860_MCU_CMD_WAKEUP, 0, 1);

	if (sc->mac_ver >= 0x5390)
		FUNC35(sc);
	else if (sc->mac_ver >= 0x3071)
		FUNC32(sc);

	/* disable non-existing Rx chains */
	bbp3 = FUNC21(sc, 3);
	bbp3 &= ~(1 << 3 | 1 << 4);
	if (sc->nrxchains == 2)
		bbp3 |= 1 << 3;
	else if (sc->nrxchains == 3)
		bbp3 |= 1 << 4;
	FUNC22(sc, 3, bbp3);

	/* disable non-existing Tx chains */
	bbp1 = FUNC21(sc, 1);
	if (sc->ntxchains == 1)
		bbp1 = (bbp1 & ~(1 << 3 | 1 << 4));
	else if (sc->mac_ver == 0x3593 && sc->ntxchains == 2)
		bbp1 = (bbp1 & ~(1 << 4)) | 1 << 3;
	else if (sc->mac_ver == 0x3593 && sc->ntxchains == 3)
		bbp1 = (bbp1 & ~(1 << 3)) | 1 << 4;
	FUNC22(sc, 1, bbp1);

	if (sc->mac_ver >= 0x3071)
		FUNC31(sc);

	/* select default channel */
	FUNC27(sc, ic->ic_curchan);

	/* reset RF from MCU */
	FUNC23(sc, RT2860_MCU_CMD_RFRESET, 0, 0);

	/* set RTS threshold */
	tmp = FUNC3(sc, RT2860_TX_RTS_CFG);
	tmp &= ~0xffff00;
	tmp |= IEEE80211_RTS_DEFAULT << 8;
	FUNC5(sc, RT2860_TX_RTS_CFG, tmp);

	/* setup initial protection mode */
	FUNC29(sc);

	/* turn radio LED on */
	FUNC24(sc, RT2860_LED_RADIO);

	/* enable Tx/Rx DMA engine */
	if ((error = FUNC28(sc)) != 0) {
		FUNC26(sc);
		return;
	}

	/* clear pending interrupts */
	FUNC5(sc, RT2860_INT_STATUS, 0xffffffff);
	/* enable interrupts */
	FUNC5(sc, RT2860_INT_MASK, 0x3fffc);

	if (sc->sc_flags & RT2860_ADVANCED_PS)
		FUNC23(sc, RT2860_MCU_CMD_PSLEVEL, sc->pslevel, 0);

	sc->sc_flags |= RT2860_RUNNING;

	FUNC16(&sc->watchdog_ch, hz, rt2860_watchdog, sc);
}