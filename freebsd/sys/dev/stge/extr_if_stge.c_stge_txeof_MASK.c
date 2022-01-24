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
typedef  int uint64_t ;
struct stge_txdesc {int /*<<< orphan*/ * tx_m; int /*<<< orphan*/  tx_dmamap; } ;
struct TYPE_6__ {int stge_tx_cons; scalar_t__ stge_tx_cnt; int /*<<< orphan*/  stge_tx_ring_map; int /*<<< orphan*/  stge_tx_ring_tag; int /*<<< orphan*/  stge_txbusyq; int /*<<< orphan*/  stge_txfreeq; int /*<<< orphan*/  stge_tx_tag; } ;
struct TYPE_5__ {TYPE_1__* stge_tx_ring; } ;
struct stge_softc {TYPE_3__ sc_cdata; scalar_t__ sc_watchdog_timer; TYPE_2__ sc_rdata; struct ifnet* sc_ifp; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  tfd_control; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 struct stge_txdesc* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct stge_txdesc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stge_softc*) ; 
 int STGE_TX_RING_CNT ; 
 int TFD_TFDDone ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_q ; 

__attribute__((used)) static void
FUNC8(struct stge_softc *sc)
{
	struct ifnet *ifp;
	struct stge_txdesc *txd;
	uint64_t control;
	int cons;

	FUNC3(sc);

	ifp = sc->sc_ifp;

	txd = FUNC0(&sc->sc_cdata.stge_txbusyq);
	if (txd == NULL)
		return;
	FUNC4(sc->sc_cdata.stge_tx_ring_tag,
	    sc->sc_cdata.stge_tx_ring_map, BUS_DMASYNC_POSTREAD);

	/*
	 * Go through our Tx list and free mbufs for those
	 * frames which have been transmitted.
	 */
	for (cons = sc->sc_cdata.stge_tx_cons;;
	    cons = (cons + 1) % STGE_TX_RING_CNT) {
		if (sc->sc_cdata.stge_tx_cnt <= 0)
			break;
		control = FUNC6(sc->sc_rdata.stge_tx_ring[cons].tfd_control);
		if ((control & TFD_TFDDone) == 0)
			break;
		sc->sc_cdata.stge_tx_cnt--;
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

		FUNC4(sc->sc_cdata.stge_tx_tag, txd->tx_dmamap,
		    BUS_DMASYNC_POSTWRITE);
		FUNC5(sc->sc_cdata.stge_tx_tag, txd->tx_dmamap);

		/* Output counter is updated with statistics register */
		FUNC7(txd->tx_m);
		txd->tx_m = NULL;
		FUNC2(&sc->sc_cdata.stge_txbusyq, tx_q);
		FUNC1(&sc->sc_cdata.stge_txfreeq, txd, tx_q);
		txd = FUNC0(&sc->sc_cdata.stge_txbusyq);
	}
	sc->sc_cdata.stge_tx_cons = cons;
	if (sc->sc_cdata.stge_tx_cnt == 0)
		sc->sc_watchdog_timer = 0;

        FUNC4(sc->sc_cdata.stge_tx_ring_tag,
	    sc->sc_cdata.stge_tx_ring_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}