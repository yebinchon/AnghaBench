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
struct run_softc {int sc_flags; int /*<<< orphan*/ * sc_epq; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/ * rx_m; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  cmdq_key_set; int /*<<< orphan*/  cmdq_run; int /*<<< orphan*/  ratectl_run; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int RT2860_BBP_HRST ; 
 int RT2860_MAC_RX_EN ; 
 int RT2860_MAC_SRST ; 
 int /*<<< orphan*/  RT2860_MAC_SYS_CTRL ; 
 int RT2860_MAC_TX_EN ; 
 int RT2860_RX_DMA_BUSY ; 
 int RT2860_RX_DMA_EN ; 
 int RT2860_TX2Q_PCNT_MASK ; 
 int /*<<< orphan*/  RT2860_TXRXQ_PCNT ; 
 int RT2860_TX_DMA_BUSY ; 
 int RT2860_TX_DMA_EN ; 
 int /*<<< orphan*/  RT2860_USB_DMA_CFG ; 
 int /*<<< orphan*/  RT2860_WPDMA_GLO_CFG ; 
 int RUN_DEBUG_RESET ; 
 int RUN_DEBUG_XMIT ; 
 int /*<<< orphan*/  FUNC0 (struct run_softc*,int,char*) ; 
 int RUN_EP_QUEUES ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*,int /*<<< orphan*/ ) ; 
 int RUN_N_XFER ; 
 int /*<<< orphan*/  RUN_RATECTL_OFF ; 
 int RUN_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct run_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct run_softc*) ; 
 scalar_t__ FUNC8 (struct run_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct run_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct run_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct run_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(void *arg)
{
	struct run_softc *sc = (struct run_softc *)arg;
	uint32_t tmp;
	int i;
	int ntries;

	FUNC2(sc, MA_OWNED);

	if (sc->sc_flags & RUN_RUNNING)
		FUNC9(sc, 0);	/* turn all LEDs off */

	sc->sc_flags &= ~RUN_RUNNING;

	sc->ratectl_run = RUN_RATECTL_OFF;
	sc->cmdq_run = sc->cmdq_key_set;

	FUNC3(sc);

	for(i = 0; i < RUN_N_XFER; i++)
		FUNC12(sc->sc_xfer[i]);

	FUNC1(sc);

	FUNC7(sc);

	if (sc->rx_m != NULL) {
		FUNC5(sc->rx_m);
		sc->rx_m = NULL;
	}

	/* Disable Tx/Rx DMA. */
	if (FUNC8(sc, RT2860_WPDMA_GLO_CFG, &tmp) != 0)
		return;
	tmp &= ~(RT2860_RX_DMA_EN | RT2860_TX_DMA_EN);
	FUNC11(sc, RT2860_WPDMA_GLO_CFG, tmp);

	for (ntries = 0; ntries < 100; ntries++) {
		if (FUNC8(sc, RT2860_WPDMA_GLO_CFG, &tmp) != 0)
			return;
		if ((tmp & (RT2860_TX_DMA_BUSY | RT2860_RX_DMA_BUSY)) == 0)
				break;
		FUNC6(sc, 10);
	}
	if (ntries == 100) {
		FUNC4(sc->sc_dev, "timeout waiting for DMA engine\n");
		return;
	}

	/* disable Tx/Rx */
	FUNC8(sc, RT2860_MAC_SYS_CTRL, &tmp);
	tmp &= ~(RT2860_MAC_RX_EN | RT2860_MAC_TX_EN);
	FUNC11(sc, RT2860_MAC_SYS_CTRL, tmp);

	/* wait for pending Tx to complete */
	for (ntries = 0; ntries < 100; ntries++) {
		if (FUNC8(sc, RT2860_TXRXQ_PCNT, &tmp) != 0) {
			FUNC0(sc, RUN_DEBUG_XMIT | RUN_DEBUG_RESET,
			    "Cannot read Tx queue count\n");
			break;
		}
		if ((tmp & RT2860_TX2Q_PCNT_MASK) == 0) {
			FUNC0(sc, RUN_DEBUG_XMIT | RUN_DEBUG_RESET,
			    "All Tx cleared\n");
			break;
		}
		FUNC6(sc, 10);
	}
	if (ntries >= 100)
		FUNC0(sc, RUN_DEBUG_XMIT | RUN_DEBUG_RESET,
		    "There are still pending Tx\n");
	FUNC6(sc, 10);
	FUNC11(sc, RT2860_USB_DMA_CFG, 0);

	FUNC11(sc, RT2860_MAC_SYS_CTRL, RT2860_BBP_HRST | RT2860_MAC_SRST);
	FUNC11(sc, RT2860_MAC_SYS_CTRL, 0);

	for (i = 0; i != RUN_EP_QUEUES; i++)
		FUNC10(sc, &sc->sc_epq[i]);
}