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
struct run_softc {struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ IEEE80211_M_MONITOR ; 
 scalar_t__ IEEE80211_M_STA ; 
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
 int RT2860_TX_WB_DDONE ; 
 int /*<<< orphan*/  RT2860_USB_DMA_CFG ; 
 int RT2860_USB_RX_AGG_EN ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int RT2860_USB_RX_EN ; 
 int RT2860_USB_TX_EN ; 
 int /*<<< orphan*/  RT2860_WPDMA_GLO_CFG ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*,int) ; 
 int FUNC3 (struct run_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct run_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct run_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	uint32_t tmp;
	int error, ntries;

	FUNC4(sc, RT2860_MAC_SYS_CTRL, RT2860_MAC_TX_EN);
	for (ntries = 0; ntries < 200; ntries++) {
		if ((error = FUNC3(sc, RT2860_WPDMA_GLO_CFG, &tmp)) != 0)
			return (error);
		if ((tmp & (RT2860_TX_DMA_BUSY | RT2860_RX_DMA_BUSY)) == 0)
			break;
		FUNC2(sc, 50);
	}
	if (ntries == 200)
		return (ETIMEDOUT);

	FUNC2(sc, 50);

	tmp |= RT2860_RX_DMA_EN | RT2860_TX_DMA_EN | RT2860_TX_WB_DDONE;
	FUNC4(sc, RT2860_WPDMA_GLO_CFG, tmp);

	/* enable Rx bulk aggregation (set timeout and limit) */
	tmp = RT2860_USB_TX_EN | RT2860_USB_RX_EN | RT2860_USB_RX_AGG_EN |
	    FUNC1(128) | FUNC0(2);
	FUNC4(sc, RT2860_USB_DMA_CFG, tmp);

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
	FUNC4(sc, RT2860_RX_FILTR_CFG, tmp);

	FUNC4(sc, RT2860_MAC_SYS_CTRL,
	    RT2860_MAC_RX_EN | RT2860_MAC_TX_EN);

	return (0);
}