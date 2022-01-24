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
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;
struct bfe_tx_data {int /*<<< orphan*/ * bfe_mbuf; int /*<<< orphan*/  bfe_map; } ;
struct bfe_softc {int bfe_tx_cons; scalar_t__ bfe_tx_cnt; scalar_t__ bfe_watchdog_timer; int /*<<< orphan*/  bfe_txmbuf_tag; struct bfe_tx_data* bfe_tx_ring; int /*<<< orphan*/  bfe_tx_map; int /*<<< orphan*/  bfe_tx_tag; struct ifnet* bfe_ifp; } ;
struct bfe_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFE_DMATX_STAT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfe_softc*) ; 
 int BFE_STAT_CDMASK ; 
 int /*<<< orphan*/  BFE_TX_LIST_CNT ; 
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int FUNC2 (struct bfe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct bfe_softc *sc)
{
	struct bfe_tx_data *r;
	struct ifnet *ifp;
	int i, chipidx;

	FUNC1(sc);

	ifp = sc->bfe_ifp;

	chipidx = FUNC2(sc, BFE_DMATX_STAT) & BFE_STAT_CDMASK;
	chipidx /= sizeof(struct bfe_desc);

	i = sc->bfe_tx_cons;
	if (i == chipidx)
		return;
	FUNC3(sc->bfe_tx_tag, sc->bfe_tx_map,
	    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
	/* Go through the mbufs and free those that have been transmitted */
	for (; i != chipidx; FUNC0(i, BFE_TX_LIST_CNT)) {
		r = &sc->bfe_tx_ring[i];
		sc->bfe_tx_cnt--;
		if (r->bfe_mbuf == NULL)
			continue;
		FUNC3(sc->bfe_txmbuf_tag, r->bfe_map,
		    BUS_DMASYNC_POSTWRITE);
		FUNC4(sc->bfe_txmbuf_tag, r->bfe_map);

		FUNC5(r->bfe_mbuf);
		r->bfe_mbuf = NULL;
	}

	if (i != sc->bfe_tx_cons) {
		/* we freed up some mbufs */
		sc->bfe_tx_cons = i;
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
	}

	if (sc->bfe_tx_cnt == 0)
		sc->bfe_watchdog_timer = 0;
}