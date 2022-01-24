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
struct sis_txdesc {int /*<<< orphan*/ * tx_m; int /*<<< orphan*/  tx_dmamap; } ;
struct sis_softc {int /*<<< orphan*/  sis_tx_tag; struct sis_txdesc* sis_txdesc; int /*<<< orphan*/  sis_rx_tag; struct sis_rxdesc* sis_rxdesc; int /*<<< orphan*/  sis_flags; int /*<<< orphan*/  sis_stat_ch; scalar_t__ sis_watchdog_timer; struct ifnet* sis_ifp; } ;
struct sis_rxdesc {int /*<<< orphan*/ * rx_m; int /*<<< orphan*/  rx_dmamap; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct sis_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sis_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  SIS_CSR ; 
 int SIS_CSR_RX_DISABLE ; 
 int SIS_CSR_TX_DISABLE ; 
 int /*<<< orphan*/  SIS_FLAG_LINK ; 
 int /*<<< orphan*/  SIS_IER ; 
 int /*<<< orphan*/  SIS_IMR ; 
 int /*<<< orphan*/  SIS_ISR ; 
 int /*<<< orphan*/  FUNC3 (struct sis_softc*) ; 
 int /*<<< orphan*/  SIS_RX_LISTPTR ; 
 int SIS_RX_LIST_CNT ; 
 int /*<<< orphan*/  FUNC4 (struct sis_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SIS_TX_LISTPTR ; 
 int SIS_TX_LIST_CNT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct sis_softc *sc)
{
	struct ifnet *ifp;
	struct sis_rxdesc *rxd;
	struct sis_txdesc *txd;
	int i;

	FUNC3(sc);

	ifp = sc->sis_ifp;
	sc->sis_watchdog_timer = 0;

	FUNC7(&sc->sis_stat_ch);

	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
	FUNC1(sc, SIS_IER, 0);
	FUNC1(sc, SIS_IMR, 0);
	FUNC0(sc, SIS_ISR); /* clear any interrupts already pending */
	FUNC4(sc, SIS_CSR, SIS_CSR_TX_DISABLE|SIS_CSR_RX_DISABLE);
	FUNC2(1000);
	FUNC1(sc, SIS_TX_LISTPTR, 0);
	FUNC1(sc, SIS_RX_LISTPTR, 0);

	sc->sis_flags &= ~SIS_FLAG_LINK;

	/*
	 * Free data in the RX lists.
	 */
	for (i = 0; i < SIS_RX_LIST_CNT; i++) {
		rxd = &sc->sis_rxdesc[i];
		if (rxd->rx_m != NULL) {
			FUNC5(sc->sis_rx_tag, rxd->rx_dmamap,
			    BUS_DMASYNC_POSTREAD);
			FUNC6(sc->sis_rx_tag, rxd->rx_dmamap);
			FUNC8(rxd->rx_m);
			rxd->rx_m = NULL;
		}
	}

	/*
	 * Free the TX list buffers.
	 */
	for (i = 0; i < SIS_TX_LIST_CNT; i++) {
		txd = &sc->sis_txdesc[i];
		if (txd->tx_m != NULL) {
			FUNC5(sc->sis_tx_tag, txd->tx_dmamap,
			    BUS_DMASYNC_POSTWRITE);
			FUNC6(sc->sis_tx_tag, txd->tx_dmamap);
			FUNC8(txd->tx_m);
			txd->tx_m = NULL;
		}
	}
}