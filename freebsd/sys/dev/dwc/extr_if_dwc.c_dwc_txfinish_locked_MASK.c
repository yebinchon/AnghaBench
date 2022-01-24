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
struct dwc_softc {size_t tx_idx_tail; size_t tx_idx_head; scalar_t__ tx_watchdog_count; int /*<<< orphan*/  txbuf_tag; struct dwc_bufmap* txbuf_map; struct dwc_hwdesc* txdesc_ring; struct ifnet* ifp; } ;
struct dwc_hwdesc {int tdes0; } ;
struct dwc_bufmap {int /*<<< orphan*/ * mbuf; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int DDESC_TDES0_OWN ; 
 int /*<<< orphan*/  FUNC0 (struct dwc_softc*) ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc_softc*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (struct dwc_softc*,size_t) ; 

__attribute__((used)) static void
FUNC7(struct dwc_softc *sc)
{
	struct dwc_bufmap *bmap;
	struct dwc_hwdesc *desc;
	struct ifnet *ifp;

	FUNC0(sc);

	ifp = sc->ifp;
	while (sc->tx_idx_tail != sc->tx_idx_head) {
		desc = &sc->txdesc_ring[sc->tx_idx_tail];
		if ((desc->tdes0 & DDESC_TDES0_OWN) != 0)
			break;
		bmap = &sc->txbuf_map[sc->tx_idx_tail];
		FUNC1(sc->txbuf_tag, bmap->map,
		    BUS_DMASYNC_POSTWRITE);
		FUNC2(sc->txbuf_tag, bmap->map);
		FUNC5(bmap->mbuf);
		bmap->mbuf = NULL;
		FUNC3(sc, sc->tx_idx_tail, 0, 0);
		sc->tx_idx_tail = FUNC6(sc, sc->tx_idx_tail);
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
		FUNC4(ifp, IFCOUNTER_OPACKETS, 1);
	}

	/* If there are no buffers outstanding, muzzle the watchdog. */
	if (sc->tx_idx_tail == sc->tx_idx_head) {
		sc->tx_watchdog_count = 0;
	}
}