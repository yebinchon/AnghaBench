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
typedef  int uint32_t ;
struct ieee80211com {scalar_t__ ic_opmode; } ;
struct rt2860_softc {int /*<<< orphan*/  sc_dev; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 scalar_t__ IEEE80211_M_MONITOR ; 
 scalar_t__ IEEE80211_M_STA ; 
 int /*<<< orphan*/  FUNC1 (struct rt2860_softc*) ; 
 int FUNC2 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2860_softc*,int /*<<< orphan*/ ,int) ; 
 int RT2860_DROP_ACK ; 
 int RT2860_DROP_BA ; 
 int RT2860_DROP_CFACK ; 
 int RT2860_DROP_CFEND ; 
 int RT2860_DROP_CRC_ERR ; 
 int RT2860_DROP_CTRL_RSV ; 
 int RT2860_DROP_CTS ; 
 int RT2860_DROP_DUPL ; 
 int RT2860_DROP_PHY_ERR ; 
 int RT2860_DROP_PSPOLL ; 
 int RT2860_DROP_RTS ; 
 int RT2860_DROP_UC_NOME ; 
 int RT2860_DROP_VER_ERR ; 
 int RT2860_MAC_RX_EN ; 
 int /*<<< orphan*/  RT2860_MAC_SYS_CTRL ; 
 int RT2860_MAC_TX_EN ; 
 int RT2860_RX_DMA_BUSY ; 
 int RT2860_RX_DMA_EN ; 
 int /*<<< orphan*/  RT2860_RX_FILTR_CFG ; 
 int RT2860_TX_DMA_BUSY ; 
 int RT2860_TX_DMA_EN ; 
 int RT2860_WPDMA_BT_SIZE64 ; 
 int RT2860_WPDMA_BT_SIZE_SHIFT ; 
 int /*<<< orphan*/  RT2860_WPDMA_GLO_CFG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(struct rt2860_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	uint32_t tmp;
	int ntries;

	/* enable Tx/Rx DMA engine */
	FUNC3(sc, RT2860_MAC_SYS_CTRL, RT2860_MAC_TX_EN);
	FUNC1(sc);
	for (ntries = 0; ntries < 200; ntries++) {
		tmp = FUNC2(sc, RT2860_WPDMA_GLO_CFG);
		if ((tmp & (RT2860_TX_DMA_BUSY | RT2860_RX_DMA_BUSY)) == 0)
			break;
		FUNC0(1000);
	}
	if (ntries == 200) {
		FUNC4(sc->sc_dev, "timeout waiting for DMA engine\n");
		return ETIMEDOUT;
	}

	FUNC0(50);

	tmp |= RT2860_RX_DMA_EN | RT2860_TX_DMA_EN |
	    RT2860_WPDMA_BT_SIZE64 << RT2860_WPDMA_BT_SIZE_SHIFT;
	FUNC3(sc, RT2860_WPDMA_GLO_CFG, tmp);

	/* set Rx filter */
	tmp = RT2860_DROP_CRC_ERR | RT2860_DROP_PHY_ERR;
	if (ic->ic_opmode != IEEE80211_M_MONITOR) {
		tmp |= RT2860_DROP_UC_NOME | RT2860_DROP_DUPL |
		    RT2860_DROP_CTS | RT2860_DROP_BA | RT2860_DROP_ACK |
		    RT2860_DROP_VER_ERR | RT2860_DROP_CTRL_RSV |
		    RT2860_DROP_CFACK | RT2860_DROP_CFEND;
		if (ic->ic_opmode == IEEE80211_M_STA)
			tmp |= RT2860_DROP_RTS | RT2860_DROP_PSPOLL;
	}
	FUNC3(sc, RT2860_RX_FILTR_CFG, tmp);

	FUNC3(sc, RT2860_MAC_SYS_CTRL,
	    RT2860_MAC_RX_EN | RT2860_MAC_TX_EN);

	return 0;
}