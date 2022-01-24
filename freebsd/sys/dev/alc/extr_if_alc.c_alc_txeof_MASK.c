#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;
struct alc_txdesc {int /*<<< orphan*/ * tx_m; int /*<<< orphan*/  tx_dmamap; } ;
struct TYPE_6__ {scalar_t__ alc_tx_cnt; size_t alc_tx_cons; int /*<<< orphan*/  alc_cmb_map; int /*<<< orphan*/  alc_cmb_tag; int /*<<< orphan*/  alc_tx_tag; struct alc_txdesc* alc_txdesc; int /*<<< orphan*/  alc_tx_ring_map; int /*<<< orphan*/  alc_tx_ring_tag; } ;
struct TYPE_5__ {TYPE_1__* alc_cmb; } ;
struct alc_softc {int alc_flags; scalar_t__ alc_watchdog_timer; TYPE_3__ alc_cdata; TYPE_2__ alc_rdata; struct ifnet* alc_ifp; } ;
struct TYPE_4__ {size_t cons; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int ALC_FLAG_AR816X_FAMILY ; 
 int ALC_FLAG_CMB_BUG ; 
 int /*<<< orphan*/  FUNC1 (struct alc_softc*) ; 
 int /*<<< orphan*/  ALC_MBOX_TD_CONS_IDX ; 
 int /*<<< orphan*/  ALC_MBOX_TD_PRI0_CONS_IDX ; 
 int /*<<< orphan*/  ALC_TX_RING_CNT ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 size_t FUNC2 (struct alc_softc*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (struct alc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 size_t MBOX_TD_CONS_LO_IDX_MASK ; 
 size_t MBOX_TD_CONS_LO_IDX_SHIFT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct alc_softc *sc)
{
	struct ifnet *ifp;
	struct alc_txdesc *txd;
	uint32_t cons, prod;
	int prog;

	FUNC1(sc);

	ifp = sc->alc_ifp;

	if (sc->alc_cdata.alc_tx_cnt == 0)
		return;
	FUNC4(sc->alc_cdata.alc_tx_ring_tag,
	    sc->alc_cdata.alc_tx_ring_map, BUS_DMASYNC_POSTWRITE);
	if ((sc->alc_flags & ALC_FLAG_CMB_BUG) == 0) {
		FUNC4(sc->alc_cdata.alc_cmb_tag,
		    sc->alc_cdata.alc_cmb_map, BUS_DMASYNC_POSTREAD);
		prod = sc->alc_rdata.alc_cmb->cons;
	} else {
		if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) != 0)
			prod = FUNC2(sc, ALC_MBOX_TD_PRI0_CONS_IDX);
		else {
			prod = FUNC3(sc, ALC_MBOX_TD_CONS_IDX);
			/* Assume we're using normal Tx priority queue. */
			prod = (prod & MBOX_TD_CONS_LO_IDX_MASK) >>
			    MBOX_TD_CONS_LO_IDX_SHIFT;
		}
	}
	cons = sc->alc_cdata.alc_tx_cons;
	/*
	 * Go through our Tx list and free mbufs for those
	 * frames which have been transmitted.
	 */
	for (prog = 0; cons != prod; prog++,
	    FUNC0(cons, ALC_TX_RING_CNT)) {
		if (sc->alc_cdata.alc_tx_cnt <= 0)
			break;
		prog++;
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
		sc->alc_cdata.alc_tx_cnt--;
		txd = &sc->alc_cdata.alc_txdesc[cons];
		if (txd->tx_m != NULL) {
			/* Reclaim transmitted mbufs. */
			FUNC4(sc->alc_cdata.alc_tx_tag,
			    txd->tx_dmamap, BUS_DMASYNC_POSTWRITE);
			FUNC5(sc->alc_cdata.alc_tx_tag,
			    txd->tx_dmamap);
			FUNC6(txd->tx_m);
			txd->tx_m = NULL;
		}
	}

	if ((sc->alc_flags & ALC_FLAG_CMB_BUG) == 0)
		FUNC4(sc->alc_cdata.alc_cmb_tag,
		    sc->alc_cdata.alc_cmb_map, BUS_DMASYNC_PREREAD);
	sc->alc_cdata.alc_tx_cons = cons;
	/*
	 * Unarm watchdog timer only when there is no pending
	 * frames in Tx queue.
	 */
	if (sc->alc_cdata.alc_tx_cnt == 0)
		sc->alc_watchdog_timer = 0;
}