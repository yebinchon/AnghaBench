#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct glc_txsoft {int /*<<< orphan*/ * txs_mbuf; int /*<<< orphan*/  txs_dmamap; } ;
struct glc_softc {int first_used_txdma_slot; int /*<<< orphan*/  sc_tick_ch; scalar_t__ sc_wdog_timer; TYPE_1__* sc_ifp; int /*<<< orphan*/  sc_ifpflags; int /*<<< orphan*/  sc_self; struct glc_rxsoft* sc_rxsoft; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_bus; scalar_t__ bsy_txdma_slots; int /*<<< orphan*/  sc_txfreeq; int /*<<< orphan*/  sc_txdma_tag; int /*<<< orphan*/  sc_txdirtyq; int /*<<< orphan*/  sc_rxdmadesc_map; int /*<<< orphan*/  sc_dmadesc_tag; int /*<<< orphan*/  sc_mtx; } ;
struct glc_rxsoft {int rxs_desc_slot; int /*<<< orphan*/  rxs_desc; int /*<<< orphan*/ * rxs_mbuf; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_flags; int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int GLC_MAX_RX_PACKETS ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  MA_OWNED ; 
 struct glc_txsoft* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct glc_txsoft*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct glc_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct glc_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct glc_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct glc_softc*) ; 
 int /*<<< orphan*/  glc_tick ; 
 int /*<<< orphan*/  hz ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  txs_q ; 

__attribute__((used)) static void
FUNC15(struct glc_softc *sc)
{
	int i, error;
	struct glc_rxsoft *rxs;
	struct glc_txsoft *txs;

	FUNC14(&sc->sc_mtx, MA_OWNED);

	FUNC12(sc->sc_bus, sc->sc_dev, 0);
	FUNC11(sc->sc_bus, sc->sc_dev, 0);

	FUNC9(sc);

	for (i = 0; i < GLC_MAX_RX_PACKETS; i++) {
		rxs = &sc->sc_rxsoft[i];
		rxs->rxs_desc_slot = i;

		if (rxs->rxs_mbuf == NULL) {
			FUNC7(sc, i);

			if (rxs->rxs_mbuf == NULL) {
				rxs->rxs_desc_slot = -1;
				break;
			}
		}

		FUNC8(sc, i);
		FUNC3(sc->sc_dmadesc_tag, sc->sc_rxdmadesc_map,
		    BUS_DMASYNC_PREREAD);
	}

	/* Clear TX dirty queue */
	while ((txs = FUNC0(&sc->sc_txdirtyq)) != NULL) {
		FUNC2(&sc->sc_txdirtyq, txs_q);
		FUNC4(sc->sc_txdma_tag, txs->txs_dmamap);

		if (txs->txs_mbuf != NULL) {
			FUNC13(txs->txs_mbuf);
			txs->txs_mbuf = NULL;
		}

		FUNC1(&sc->sc_txfreeq, txs, txs_q);
	}
	sc->first_used_txdma_slot = -1;
	sc->bsy_txdma_slots = 0;

	error = FUNC10(sc->sc_bus, sc->sc_dev,
	    sc->sc_rxsoft[0].rxs_desc, 0);
	if (error != 0)
		FUNC6(sc->sc_self,
		    "lv1_net_start_rx_dma error: %d\n", error);

	sc->sc_ifp->if_drv_flags |= IFF_DRV_RUNNING;
	sc->sc_ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
	sc->sc_ifpflags = sc->sc_ifp->if_flags;

	sc->sc_wdog_timer = 0;
	FUNC5(&sc->sc_tick_ch, hz, glc_tick, sc);
}