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
typedef  size_t uint32_t ;
struct tsec_softc {size_t tx_idx_tail; size_t tx_idx_head; scalar_t__ tsec_watchdog; int /*<<< orphan*/  tsec_tx_dmap; int /*<<< orphan*/  tsec_tx_dtag; int /*<<< orphan*/  tsec_tx_mtag; struct tsec_bufmap* tx_bufmap; struct tsec_desc* tsec_tx_vaddr; struct ifnet* tsec_ifp; } ;
struct tsec_desc {int flags; } ;
struct tsec_bufmap {int /*<<< orphan*/ * mbuf; int /*<<< orphan*/  map; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  IFCOUNTER_COLLISIONS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int FUNC0 (struct tsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSEC_REG_MON_TLCL ; 
 int /*<<< orphan*/  TSEC_REG_MON_TMCL ; 
 int /*<<< orphan*/  TSEC_REG_MON_TNCL ; 
 int /*<<< orphan*/  TSEC_REG_MON_TSCL ; 
 int /*<<< orphan*/  TSEC_REG_MON_TXCL ; 
 int /*<<< orphan*/  FUNC1 (struct tsec_softc*) ; 
 int TSEC_TXBD_R ; 
 int TSEC_TX_NUM_DESC ; 
 int /*<<< orphan*/  FUNC2 (struct tsec_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC8(struct tsec_softc *sc)
{
	struct ifnet *ifp;
	uint32_t tx_idx;

	FUNC1(sc);

	ifp = sc->tsec_ifp;

	/* Update collision statistics */
	FUNC5(ifp, IFCOUNTER_COLLISIONS, FUNC0(sc, TSEC_REG_MON_TNCL));

	/* Reset collision counters in hardware */
	FUNC2(sc, TSEC_REG_MON_TSCL, 0);
	FUNC2(sc, TSEC_REG_MON_TMCL, 0);
	FUNC2(sc, TSEC_REG_MON_TLCL, 0);
	FUNC2(sc, TSEC_REG_MON_TXCL, 0);
	FUNC2(sc, TSEC_REG_MON_TNCL, 0);

	FUNC3(sc->tsec_tx_dtag, sc->tsec_tx_dmap,
	    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

	tx_idx = sc->tx_idx_tail;
	while (tx_idx != sc->tx_idx_head) {
		struct tsec_desc *tx_desc;
		struct tsec_bufmap *tx_bufmap;

		tx_desc = &sc->tsec_tx_vaddr[tx_idx];
		if (tx_desc->flags & TSEC_TXBD_R) {
			break;
		}

		tx_bufmap = &sc->tx_bufmap[tx_idx];
		tx_idx = (tx_idx + 1) & (TSEC_TX_NUM_DESC - 1);
		if (tx_bufmap->mbuf == NULL)
			continue;

		/*
		 * This is the last buf in this packet, so unmap and free it.
		 */
		FUNC3(sc->tsec_tx_mtag, tx_bufmap->map,
		    BUS_DMASYNC_POSTWRITE);
		FUNC4(sc->tsec_tx_mtag, tx_bufmap->map);
		FUNC6(tx_bufmap->mbuf);
		tx_bufmap->mbuf = NULL;

		FUNC5(ifp, IFCOUNTER_OPACKETS, 1);
	}
	sc->tx_idx_tail = tx_idx;
	FUNC3(sc->tsec_tx_dtag, sc->tsec_tx_dmap,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
	FUNC7(ifp);

	if (sc->tx_idx_tail == sc->tx_idx_head)
		sc->tsec_watchdog = 0;
}