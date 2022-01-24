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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct ieee80211com {int ic_nrunning; int /*<<< orphan*/  ic_curchan; int /*<<< orphan*/  ic_macaddr; int /*<<< orphan*/  ic_vaps; } ;
struct run_softc {int* txpow20mhz; int mac_ver; scalar_t__ cmdq_key_set; int mac_rev; scalar_t__ rf_rev; int nrxchains; int ntxchains; int /*<<< orphan*/ * sc_xfer; scalar_t__ cmdq_run; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/ * led; TYPE_1__* bbp; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/ * sc_epq; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int /*<<< orphan*/  iv_myaddr; } ;
struct TYPE_5__ {int val; int /*<<< orphan*/  reg; } ;
struct TYPE_4__ {int reg; int val; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT2860_ASIC_VER_ID ; 
 int RT2860_BBP_HRST ; 
 int RT2860_DLY_PAPE_EN_SHIFT ; 
 int /*<<< orphan*/  RT2860_H2M_BBPAGENT ; 
 int /*<<< orphan*/  RT2860_H2M_MAILBOX ; 
 int /*<<< orphan*/  RT2860_HT_FBK_CFG1 ; 
 int /*<<< orphan*/  RT2860_LED_RADIO ; 
 int /*<<< orphan*/  RT2860_LG_FBK_CFG0 ; 
 int RT2860_MAC_SRST ; 
 int /*<<< orphan*/  RT2860_MAC_STATUS_REG ; 
 int /*<<< orphan*/  RT2860_MAC_SYS_CTRL ; 
 int /*<<< orphan*/  RT2860_MAX_LEN_CFG ; 
 int /*<<< orphan*/  RT2860_MCU_CMD_LED1 ; 
 int /*<<< orphan*/  RT2860_MCU_CMD_LED2 ; 
 int /*<<< orphan*/  RT2860_MCU_CMD_LED3 ; 
 int RT2860_PME_OEN ; 
 int RT2860_RX_DMA_BUSY ; 
 int RT2860_RX_STATUS_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT2860_SKEY_MODE_0_7 ; 
 int /*<<< orphan*/  RT2860_SYS_CTRL ; 
 int /*<<< orphan*/  RT2860_TXOP_CTRL_CFG ; 
 int /*<<< orphan*/  RT2860_TXOP_HLDR_ET ; 
 int RT2860_TX_DMA_BUSY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int RT2860_TX_STATUS_BUSY ; 
 int /*<<< orphan*/  RT2860_TX_SW_CFG0 ; 
 int RT2860_TX_WB_DDONE ; 
 int /*<<< orphan*/  RT2860_USB_DMA_CFG ; 
 int /*<<< orphan*/  RT2860_US_CYC_CNT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT2860_WMM_AIFSN_CFG ; 
 int /*<<< orphan*/  RT2860_WMM_CWMAX_CFG ; 
 int /*<<< orphan*/  RT2860_WMM_CWMIN_CFG ; 
 int /*<<< orphan*/  RT2860_WMM_TXOP0_CFG ; 
 int /*<<< orphan*/  RT2860_WMM_TXOP1_CFG ; 
 int /*<<< orphan*/  RT2860_WPDMA_GLO_CFG ; 
 scalar_t__ RT3070_RF_3020 ; 
 scalar_t__ RT5390_RF_5370 ; 
 size_t RUN_BULK_RX ; 
 scalar_t__ RUN_CMDQ_GO ; 
 int RUN_EP_QUEUES ; 
 int RUN_N_XFER ; 
 int /*<<< orphan*/  RUN_RUNNING ; 
 struct ieee80211vap* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (TYPE_2__*) ; 
 TYPE_2__* rt2870_def_mac ; 
 scalar_t__ FUNC7 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct run_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct run_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct run_softc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct run_softc*) ; 
 scalar_t__ FUNC12 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct run_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct run_softc*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC15 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC19 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC20 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC21 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC22 (struct run_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct run_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct run_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct run_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (struct run_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct run_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (struct run_softc*) ; 
 scalar_t__ FUNC29 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC30 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC31 (struct run_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC34(struct run_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211vap *vap = FUNC4(&ic->ic_vaps);
	uint32_t tmp;
	uint8_t bbp1, bbp3;
	int i;
	int ridx;
	int ntries;

	if (ic->ic_nrunning > 1)
		return;

	FUNC28(sc);

	if (FUNC12(sc) != 0) {
		FUNC5(sc->sc_dev, "could not load 8051 microcode\n");
		goto fail;
	}

	for (ntries = 0; ntries < 100; ntries++) {
		if (FUNC14(sc, RT2860_ASIC_VER_ID, &tmp) != 0)
			goto fail;
		if (tmp != 0 && tmp != 0xffffffff)
			break;
		FUNC10(sc, 10);
	}
	if (ntries == 100)
		goto fail;

	for (i = 0; i != RUN_EP_QUEUES; i++)
		FUNC27(sc, &sc->sc_epq[i]);

	FUNC24(sc, vap ? vap->iv_myaddr : ic->ic_macaddr);

	for (ntries = 0; ntries < 100; ntries++) {
		if (FUNC14(sc, RT2860_WPDMA_GLO_CFG, &tmp) != 0)
			goto fail;
		if ((tmp & (RT2860_TX_DMA_BUSY | RT2860_RX_DMA_BUSY)) == 0)
			break;
		FUNC10(sc, 10);
	}
	if (ntries == 100) {
		FUNC5(sc->sc_dev, "timeout waiting for DMA engine\n");
		goto fail;
	}
	tmp &= 0xff0;
	tmp |= RT2860_TX_WB_DDONE;
	FUNC31(sc, RT2860_WPDMA_GLO_CFG, tmp);

	/* turn off PME_OEN to solve high-current issue */
	FUNC14(sc, RT2860_SYS_CTRL, &tmp);
	FUNC31(sc, RT2860_SYS_CTRL, tmp & ~RT2860_PME_OEN);

	FUNC31(sc, RT2860_MAC_SYS_CTRL,
	    RT2860_BBP_HRST | RT2860_MAC_SRST);
	FUNC31(sc, RT2860_USB_DMA_CFG, 0);

	if (FUNC15(sc) != 0) {
		FUNC5(sc->sc_dev, "could not reset chipset\n");
		goto fail;
	}

	FUNC31(sc, RT2860_MAC_SYS_CTRL, 0);

	/* init Tx power for all Tx rates (from EEPROM) */
	for (ridx = 0; ridx < 5; ridx++) {
		if (sc->txpow20mhz[ridx] == 0xffffffff)
			continue;
		FUNC31(sc, FUNC1(ridx), sc->txpow20mhz[ridx]);
	}

	for (i = 0; i < FUNC6(rt2870_def_mac); i++)
		FUNC31(sc, rt2870_def_mac[i].reg, rt2870_def_mac[i].val);
	FUNC31(sc, RT2860_WMM_AIFSN_CFG, 0x00002273);
	FUNC31(sc, RT2860_WMM_CWMIN_CFG, 0x00002344);
	FUNC31(sc, RT2860_WMM_CWMAX_CFG, 0x000034aa);

	if (sc->mac_ver >= 0x5390) {
		FUNC31(sc, RT2860_TX_SW_CFG0,
		    4 << RT2860_DLY_PAPE_EN_SHIFT | 4);
		if (sc->mac_ver >= 0x5392) {
			FUNC31(sc, RT2860_MAX_LEN_CFG, 0x00002fff);
			if (sc->mac_ver == 0x5592) {
				FUNC31(sc, RT2860_HT_FBK_CFG1, 0xedcba980);
				FUNC31(sc, RT2860_TXOP_HLDR_ET, 0x00000082);
			} else {
				FUNC31(sc, RT2860_HT_FBK_CFG1, 0xedcb4980);
				FUNC31(sc, RT2860_LG_FBK_CFG0, 0xedcba322);
			}
		}
	} else if (sc->mac_ver == 0x3593) {
		FUNC31(sc, RT2860_TX_SW_CFG0,
		    4 << RT2860_DLY_PAPE_EN_SHIFT | 2);
	} else if (sc->mac_ver >= 0x3070) {
		/* set delay of PA_PE assertion to 1us (unit of 0.25us) */
		FUNC31(sc, RT2860_TX_SW_CFG0,
		    4 << RT2860_DLY_PAPE_EN_SHIFT);
	}

	/* wait while MAC is busy */
	for (ntries = 0; ntries < 100; ntries++) {
		if (FUNC14(sc, RT2860_MAC_STATUS_REG, &tmp) != 0)
			goto fail;
		if (!(tmp & (RT2860_RX_STATUS_BUSY | RT2860_TX_STATUS_BUSY)))
			break;
		FUNC10(sc, 10);
	}
	if (ntries == 100)
		goto fail;

	/* clear Host to MCU mailbox */
	FUNC31(sc, RT2860_H2M_BBPAGENT, 0);
	FUNC31(sc, RT2860_H2M_MAILBOX, 0);
	FUNC10(sc, 10);

	if (FUNC7(sc) != 0) {
		FUNC5(sc->sc_dev, "could not initialize BBP\n");
		goto fail;
	}

	/* abort TSF synchronization */
	FUNC11(sc);

	/* clear RX WCID search table */
	FUNC25(sc, FUNC3(0), 0, 512);
	/* clear WCID attribute table */
	FUNC25(sc, FUNC2(0), 0, 8 * 32);

	/* hostapd sets a key before init. So, don't clear it. */
	if (sc->cmdq_key_set != RUN_CMDQ_GO) {
		/* clear shared key table */
		FUNC25(sc, FUNC0(0, 0), 0, 8 * 32);
		/* clear shared key mode */
		FUNC25(sc, RT2860_SKEY_MODE_0_7, 0, 4);
	}

	FUNC14(sc, RT2860_US_CYC_CNT, &tmp);
	tmp = (tmp & ~0xff) | 0x1e;
	FUNC31(sc, RT2860_US_CYC_CNT, tmp);

	if (sc->mac_rev != 0x0101)
		FUNC31(sc, RT2860_TXOP_CTRL_CFG, 0x0000583f);

	FUNC31(sc, RT2860_WMM_TXOP0_CFG, 0);
	FUNC31(sc, RT2860_WMM_TXOP1_CFG, 48 << 16 | 96);

	/* write vendor-specific BBP values (from EEPROM) */
	if (sc->mac_ver < 0x3593) {
		for (i = 0; i < 10; i++) {
			if (sc->bbp[i].reg == 0 || sc->bbp[i].reg == 0xff)
				continue;
			FUNC9(sc, sc->bbp[i].reg, sc->bbp[i].val);
		}
	}

	/* select Main antenna for 1T1R devices */
	if (sc->rf_rev == RT3070_RF_3020 || sc->rf_rev == RT5390_RF_5370)
		FUNC26(sc, 0);

	/* send LEDs operating mode to microcontroller */
	(void)FUNC13(sc, RT2860_MCU_CMD_LED1, sc->led[0]);
	(void)FUNC13(sc, RT2860_MCU_CMD_LED2, sc->led[1]);
	(void)FUNC13(sc, RT2860_MCU_CMD_LED3, sc->led[2]);

	if (sc->mac_ver >= 0x5390)
		FUNC20(sc);
	else if (sc->mac_ver == 0x3593)
		FUNC18(sc);
	else if (sc->mac_ver >= 0x3070)
		FUNC16(sc);

	/* disable non-existing Rx chains */
	FUNC8(sc, 3, &bbp3);
	bbp3 &= ~(1 << 3 | 1 << 4);
	if (sc->nrxchains == 2)
		bbp3 |= 1 << 3;
	else if (sc->nrxchains == 3)
		bbp3 |= 1 << 4;
	FUNC9(sc, 3, bbp3);

	/* disable non-existing Tx chains */
	FUNC8(sc, 1, &bbp1);
	if (sc->ntxchains == 1)
		bbp1 &= ~(1 << 3 | 1 << 4);
	FUNC9(sc, 1, bbp1);

	if (sc->mac_ver >= 0x5390)
		FUNC21(sc);
	else if (sc->mac_ver == 0x3593)
		FUNC19(sc);
	else if (sc->mac_ver >= 0x3070)
		FUNC17(sc);

	/* select default channel */
	FUNC22(sc, ic->ic_curchan);

	/* setup initial protection mode */
	FUNC30(ic);

	/* turn radio LED on */
	FUNC23(sc, RT2860_LED_RADIO);

	sc->sc_flags |= RUN_RUNNING;
	sc->cmdq_run = RUN_CMDQ_GO;

	for (i = 0; i != RUN_N_XFER; i++)
		FUNC33(sc->sc_xfer[i]);

	FUNC32(sc->sc_xfer[RUN_BULK_RX]);

	if (FUNC29(sc) != 0)
		goto fail;

	return;

fail:
	FUNC28(sc);
}