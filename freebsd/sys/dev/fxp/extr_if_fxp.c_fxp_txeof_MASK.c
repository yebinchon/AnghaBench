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
struct fxp_tx {TYPE_2__* tx_cb; int /*<<< orphan*/ * tx_mbuf; int /*<<< orphan*/  tx_map; struct fxp_tx* tx_next; } ;
struct TYPE_6__ {struct fxp_tx* tx_first; } ;
struct fxp_softc {scalar_t__ tx_queued; scalar_t__ watchdog_timer; int /*<<< orphan*/  cbl_map; int /*<<< orphan*/  cbl_tag; TYPE_3__ fxp_desc; int /*<<< orphan*/  fxp_txmtag; int /*<<< orphan*/  ifp; } ;
typedef  int /*<<< orphan*/  if_t ;
struct TYPE_5__ {TYPE_1__* tbd; int /*<<< orphan*/  cb_status; } ;
struct TYPE_4__ {scalar_t__ tb_addr; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int FXP_CB_STATUS_C ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct fxp_softc *sc)
{
	if_t ifp;
	struct fxp_tx *txp;

	ifp = sc->ifp;
	FUNC0(sc->cbl_tag, sc->cbl_map,
	    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
	for (txp = sc->fxp_desc.tx_first; sc->tx_queued &&
	    (FUNC3(txp->tx_cb->cb_status) & FXP_CB_STATUS_C) != 0;
	    txp = txp->tx_next) {
		if (txp->tx_mbuf != NULL) {
			FUNC0(sc->fxp_txmtag, txp->tx_map,
			    BUS_DMASYNC_POSTWRITE);
			FUNC1(sc->fxp_txmtag, txp->tx_map);
			FUNC4(txp->tx_mbuf);
			txp->tx_mbuf = NULL;
			/* clear this to reset csum offload bits */
			txp->tx_cb->tbd[0].tb_addr = 0;
		}
		sc->tx_queued--;
		FUNC2(ifp, 0, IFF_DRV_OACTIVE);
	}
	sc->fxp_desc.tx_first = txp;
	FUNC0(sc->cbl_tag, sc->cbl_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	if (sc->tx_queued == 0)
		sc->watchdog_timer = 0;
}