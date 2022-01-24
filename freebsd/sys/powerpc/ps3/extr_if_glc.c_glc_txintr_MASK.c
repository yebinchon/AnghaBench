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
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;
struct glc_txsoft {size_t txs_lastdesc; int txs_firstdesc; int /*<<< orphan*/ * txs_mbuf; scalar_t__ txs_ndescs; int /*<<< orphan*/  txs_dmamap; } ;
struct glc_softc {int first_used_txdma_slot; int sc_wdog_timer; int /*<<< orphan*/  sc_txdirtyq; int /*<<< orphan*/  sc_self; scalar_t__ sc_txdmadesc_phys; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_bus; int /*<<< orphan*/  sc_txfreeq; TYPE_1__* sc_txdmadesc; int /*<<< orphan*/  bsy_txdma_slots; int /*<<< orphan*/  sc_txdma_tag; int /*<<< orphan*/  sc_txdmadesc_map; int /*<<< orphan*/  sc_dmadesc_tag; struct ifnet* sc_ifp; } ;
struct glc_dmadesc {int dummy; } ;
struct TYPE_2__ {int cmd_stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int GELIC_CMDSTAT_CHAIN_END ; 
 int GELIC_DESCR_OWNED ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct glc_txsoft* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct glc_txsoft*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txs_q ; 

__attribute__((used)) static void
FUNC13(struct glc_softc *sc)
{
	struct ifnet *ifp = sc->sc_ifp;
	struct glc_txsoft *txs;
	int progress = 0, kickstart = 0, error;

	FUNC5(sc->sc_dmadesc_tag, sc->sc_txdmadesc_map,
	    BUS_DMASYNC_POSTREAD);

	while ((txs = FUNC2(&sc->sc_txdirtyq)) != NULL) {
		if (sc->sc_txdmadesc[txs->txs_lastdesc].cmd_stat
		    & GELIC_DESCR_OWNED)
			break;

		FUNC4(&sc->sc_txdirtyq, txs_q);
		FUNC6(sc->sc_txdma_tag, txs->txs_dmamap);
		sc->bsy_txdma_slots -= txs->txs_ndescs;

		if (txs->txs_mbuf != NULL) {
			FUNC12(txs->txs_mbuf);
			txs->txs_mbuf = NULL;
		}

		if ((sc->sc_txdmadesc[txs->txs_lastdesc].cmd_stat & 0xf0000000)
		    != 0) {
			FUNC11(sc->sc_bus, sc->sc_dev, 0);
			kickstart = 1;
			FUNC9(ifp, IFCOUNTER_OERRORS, 1);
		}

		if (sc->sc_txdmadesc[txs->txs_lastdesc].cmd_stat &
		    GELIC_CMDSTAT_CHAIN_END)
			kickstart = 1;

		FUNC3(&sc->sc_txfreeq, txs, txs_q);
		FUNC9(ifp, IFCOUNTER_OPACKETS, 1);
		progress = 1;
	}

	if (txs != NULL)
		sc->first_used_txdma_slot = txs->txs_firstdesc;
	else
		sc->first_used_txdma_slot = -1;

	if (kickstart || txs != NULL) {
		/* Speculatively (or necessarily) start the TX queue again */
		error = FUNC10(sc->sc_bus, sc->sc_dev,
		    sc->sc_txdmadesc_phys +
		    ((txs == NULL) ? 0 : txs->txs_firstdesc)*
		     sizeof(struct glc_dmadesc), 0);
		if (error != 0)
			FUNC7(sc->sc_self,
			    "lv1_net_start_tx_dma error: %d\n", error);
	}

	if (progress) {
		/*
		 * We freed some descriptors, so reset IFF_DRV_OACTIVE
		 * and restart.
		 */
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
		sc->sc_wdog_timer = FUNC1(&sc->sc_txdirtyq) ? 0 : 5;

		if ((ifp->if_drv_flags & IFF_DRV_RUNNING) &&
		    !FUNC0(&ifp->if_snd))
			FUNC8(ifp);
	}
}