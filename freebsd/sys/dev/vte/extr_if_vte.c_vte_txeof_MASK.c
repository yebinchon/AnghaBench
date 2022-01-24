#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct vte_txdesc {int tx_flags; int /*<<< orphan*/ * tx_m; int /*<<< orphan*/  tx_dmamap; TYPE_1__* tx_desc; } ;
struct TYPE_4__ {scalar_t__ vte_tx_cnt; int vte_tx_cons; int /*<<< orphan*/  vte_tx_tag; struct vte_txdesc* vte_txdesc; int /*<<< orphan*/  vte_tx_ring_map; int /*<<< orphan*/  vte_tx_ring_tag; } ;
struct vte_softc {scalar_t__ vte_watchdog_timer; TYPE_2__ vte_cdata; struct ifnet* vte_ifp; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  dtst; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int VTE_DTST_TX_OWN ; 
 int /*<<< orphan*/  FUNC1 (struct vte_softc*) ; 
 int VTE_TXMBUF ; 
 int /*<<< orphan*/  VTE_TX_RING_CNT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct vte_softc *sc)
{
	struct ifnet *ifp;
	struct vte_txdesc *txd;
	uint16_t status;
	int cons, prog;

	FUNC1(sc);

	ifp = sc->vte_ifp;

	if (sc->vte_cdata.vte_tx_cnt == 0)
		return;
	FUNC2(sc->vte_cdata.vte_tx_ring_tag,
	    sc->vte_cdata.vte_tx_ring_map, BUS_DMASYNC_POSTREAD |
	    BUS_DMASYNC_POSTWRITE);
	cons = sc->vte_cdata.vte_tx_cons;
	/*
	 * Go through our TX list and free mbufs for those
	 * frames which have been transmitted.
	 */
	for (prog = 0; sc->vte_cdata.vte_tx_cnt > 0; prog++) {
		txd = &sc->vte_cdata.vte_txdesc[cons];
		status = FUNC4(txd->tx_desc->dtst);
		if ((status & VTE_DTST_TX_OWN) != 0)
			break;
		sc->vte_cdata.vte_tx_cnt--;
		/* Reclaim transmitted mbufs. */
		FUNC2(sc->vte_cdata.vte_tx_tag, txd->tx_dmamap,
		    BUS_DMASYNC_POSTWRITE);
		FUNC3(sc->vte_cdata.vte_tx_tag, txd->tx_dmamap);
		if ((txd->tx_flags & VTE_TXMBUF) == 0)
			FUNC5(txd->tx_m);
		txd->tx_flags &= ~VTE_TXMBUF;
		txd->tx_m = NULL;
		prog++;
		FUNC0(cons, VTE_TX_RING_CNT);
	}

	if (prog > 0) {
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
		sc->vte_cdata.vte_tx_cons = cons;
		/*
		 * Unarm watchdog timer only when there is no pending
		 * frames in TX queue.
		 */
		if (sc->vte_cdata.vte_tx_cnt == 0)
			sc->vte_watchdog_timer = 0;
	}
}