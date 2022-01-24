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
struct ffec_softc {size_t tx_idx_tail; size_t tx_idx_head; scalar_t__ tx_watchdog_count; int /*<<< orphan*/  txbuf_tag; struct ffec_bufmap* txbuf_map; struct ffec_hwdesc* txdesc_ring; struct ifnet* ifp; int /*<<< orphan*/  txdesc_map; int /*<<< orphan*/  txdesc_tag; } ;
struct ffec_hwdesc {int flags_len; } ;
struct ffec_bufmap {int /*<<< orphan*/ * mbuf; int /*<<< orphan*/  map; } ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int FEC_TXDESC_READY ; 
 int /*<<< orphan*/  FUNC0 (struct ffec_softc*) ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ffec_softc*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ffec_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (struct ffec_softc*,size_t) ; 

__attribute__((used)) static void
FUNC7(struct ffec_softc *sc)
{
	struct ifnet *ifp;
	struct ffec_hwdesc *desc;
	struct ffec_bufmap *bmap;
	boolean_t retired_buffer;

	FUNC0(sc);

	/* XXX Can't set PRE|POST right now, but we need both. */
	FUNC1(sc->txdesc_tag, sc->txdesc_map, BUS_DMASYNC_PREREAD);
	FUNC1(sc->txdesc_tag, sc->txdesc_map, BUS_DMASYNC_POSTREAD);
	ifp = sc->ifp;
	retired_buffer = false;
	while (sc->tx_idx_tail != sc->tx_idx_head) {
		desc = &sc->txdesc_ring[sc->tx_idx_tail];
		if (desc->flags_len & FEC_TXDESC_READY)
			break;
		retired_buffer = true;
		bmap = &sc->txbuf_map[sc->tx_idx_tail];
		FUNC1(sc->txbuf_tag, bmap->map, 
		    BUS_DMASYNC_POSTWRITE);
		FUNC2(sc->txbuf_tag, bmap->map);
		FUNC5(bmap->mbuf);
		bmap->mbuf = NULL;
		FUNC3(sc, sc->tx_idx_tail, 0, 0);
		sc->tx_idx_tail = FUNC6(sc, sc->tx_idx_tail);
	}

	/*
	 * If we retired any buffers, there will be open tx slots available in
	 * the descriptor ring, go try to start some new output.
	 */
	if (retired_buffer) {
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
		FUNC4(sc);
	}

	/* If there are no buffers outstanding, muzzle the watchdog. */
	if (sc->tx_idx_tail == sc->tx_idx_head) {
		sc->tx_watchdog_count = 0;
	}
}