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
struct nfe_tx_ring {int /*<<< orphan*/  tx_data_tag; struct nfe_tx_data* data; } ;
struct nfe_tx_data {int /*<<< orphan*/ * m; int /*<<< orphan*/  tx_data_map; } ;
struct nfe_jrx_ring {int /*<<< orphan*/  jrx_data_tag; struct nfe_rx_data* jdata; } ;
struct nfe_rx_ring {int /*<<< orphan*/  rx_data_tag; struct nfe_rx_data* data; } ;
struct nfe_softc {int nfe_flags; struct nfe_tx_ring txq; struct nfe_jrx_ring jrxq; struct nfe_rx_ring rxq; scalar_t__ nfe_link; int /*<<< orphan*/  nfe_stat_ch; scalar_t__ nfe_watchdog_timer; } ;
struct nfe_rx_data {int /*<<< orphan*/ * m; int /*<<< orphan*/  rx_data_map; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int NFE_JUMBO_RX_RING_COUNT ; 
 int NFE_JUMBO_SUP ; 
 int /*<<< orphan*/  FUNC0 (struct nfe_softc*) ; 
 int /*<<< orphan*/  NFE_RX_CTL ; 
 int NFE_RX_RING_COUNT ; 
 int /*<<< orphan*/  NFE_TX_CTL ; 
 int /*<<< orphan*/  FUNC1 (struct nfe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct nfe_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfe_softc*) ; 

__attribute__((used)) static void
FUNC10(if_t ifp)
{
	struct nfe_softc *sc = FUNC5(ifp);
	struct nfe_rx_ring *rx_ring;
	struct nfe_jrx_ring *jrx_ring;
	struct nfe_tx_ring *tx_ring;
	struct nfe_rx_data *rdata;
	struct nfe_tx_data *tdata;
	int i;

	FUNC0(sc);

	sc->nfe_watchdog_timer = 0;
	FUNC6(ifp, 0, (IFF_DRV_RUNNING | IFF_DRV_OACTIVE));

	FUNC4(&sc->nfe_stat_ch);

	/* abort Tx */
	FUNC1(sc, NFE_TX_CTL, 0);

	/* disable Rx */
	FUNC1(sc, NFE_RX_CTL, 0);

	/* disable interrupts */
	FUNC8(sc);

	sc->nfe_link = 0;

	/* free Rx and Tx mbufs still in the queues. */
	rx_ring = &sc->rxq;
	for (i = 0; i < NFE_RX_RING_COUNT; i++) {
		rdata = &rx_ring->data[i];
		if (rdata->m != NULL) {
			FUNC2(rx_ring->rx_data_tag,
			    rdata->rx_data_map, BUS_DMASYNC_POSTREAD);
			FUNC3(rx_ring->rx_data_tag,
			    rdata->rx_data_map);
			FUNC7(rdata->m);
			rdata->m = NULL;
		}
	}

	if ((sc->nfe_flags & NFE_JUMBO_SUP) != 0) {
		jrx_ring = &sc->jrxq;
		for (i = 0; i < NFE_JUMBO_RX_RING_COUNT; i++) {
			rdata = &jrx_ring->jdata[i];
			if (rdata->m != NULL) {
				FUNC2(jrx_ring->jrx_data_tag,
				    rdata->rx_data_map, BUS_DMASYNC_POSTREAD);
				FUNC3(jrx_ring->jrx_data_tag,
				    rdata->rx_data_map);
				FUNC7(rdata->m);
				rdata->m = NULL;
			}
		}
	}

	tx_ring = &sc->txq;
	for (i = 0; i < NFE_RX_RING_COUNT; i++) {
		tdata = &tx_ring->data[i];
		if (tdata->m != NULL) {
			FUNC2(tx_ring->tx_data_tag,
			    tdata->tx_data_map, BUS_DMASYNC_POSTWRITE);
			FUNC3(tx_ring->tx_data_tag,
			    tdata->tx_data_map);
			FUNC7(tdata->m);
			tdata->m = NULL;
		}
	}
	/* Update hardware stats. */
	FUNC9(sc);
}