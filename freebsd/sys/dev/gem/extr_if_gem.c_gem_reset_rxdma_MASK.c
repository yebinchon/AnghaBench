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
struct ip {int dummy; } ;
struct gem_softc {int sc_flags; int sc_rxfifosize; scalar_t__ sc_rxptr; TYPE_2__* sc_rxsoft; TYPE_1__* sc_ifp; } ;
struct TYPE_4__ {int /*<<< orphan*/ * rxs_mbuf; } ;
struct TYPE_3__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int ETHER_ALIGN ; 
 int ETHER_HDR_LEN ; 
 int FUNC0 (struct gem_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gem_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct gem_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gem_softc*,int) ; 
 int GEM_MAC_RX_DONE ; 
 int GEM_MAC_RX_FRAME_CNT ; 
 int /*<<< orphan*/  GEM_MAC_RX_MASK ; 
 int GEM_NRXDESC ; 
 int GEM_PCI66 ; 
 int /*<<< orphan*/  GEM_RX_BLANKING ; 
 int GEM_RX_BLANKING_TIME_SHIFT ; 
 int /*<<< orphan*/  GEM_RX_CONFIG ; 
 int GEM_RX_CONFIG_CXM_START_SHFT ; 
 int GEM_RX_CONFIG_FBOFF_SHFT ; 
 int GEM_RX_CONFIG_FIFO_THRS_SHIFT ; 
 int GEM_RX_CONFIG_RXDMA_EN ; 
 int /*<<< orphan*/  GEM_RX_KICK ; 
 int /*<<< orphan*/  GEM_RX_PAUSE_THRESH ; 
 int /*<<< orphan*/  GEM_RX_RING_PTR_HI ; 
 int /*<<< orphan*/  GEM_RX_RING_PTR_LO ; 
 int GEM_THRSH_1024 ; 
 int /*<<< orphan*/  FUNC4 (struct gem_softc*,int) ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 void FUNC5 (struct gem_softc*) ; 
 scalar_t__ FUNC6 (struct gem_softc*) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct gem_softc*) ; 

__attribute__((used)) static void
FUNC9(struct gem_softc *sc)
{
	int i;

	if (FUNC6(sc) != 0) {
		sc->sc_ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		return (FUNC5(sc));
	}
	for (i = 0; i < GEM_NRXDESC; i++)
		if (sc->sc_rxsoft[i].rxs_mbuf != NULL)
			FUNC4(sc, i);
	sc->sc_rxptr = 0;
	FUNC3(sc, BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	/* NOTE: we use only 32-bit DMA addresses here. */
	FUNC1(sc, GEM_RX_RING_PTR_HI, 0);
	FUNC1(sc, GEM_RX_RING_PTR_LO, FUNC2(sc, 0));
	FUNC1(sc, GEM_RX_KICK, GEM_NRXDESC - 4);
	FUNC1(sc, GEM_RX_CONFIG,
	    FUNC7(GEM_NRXDESC /* XXX */) |
	    ((ETHER_HDR_LEN + sizeof(struct ip)) <<
	    GEM_RX_CONFIG_CXM_START_SHFT) |
	    (GEM_THRSH_1024 << GEM_RX_CONFIG_FIFO_THRS_SHIFT) |
	    (ETHER_ALIGN << GEM_RX_CONFIG_FBOFF_SHFT));
	/* Adjusting for the SBus clock probably isn't worth the fuzz. */
	FUNC1(sc, GEM_RX_BLANKING,
	    ((6 * (sc->sc_flags & GEM_PCI66) != 0 ? 2 : 1) <<
	    GEM_RX_BLANKING_TIME_SHIFT) | 6);
	FUNC1(sc, GEM_RX_PAUSE_THRESH,
	    (3 * sc->sc_rxfifosize / 256) |
	    ((sc->sc_rxfifosize / 256) << 12));
	FUNC1(sc, GEM_RX_CONFIG,
	    FUNC0(sc, GEM_RX_CONFIG) | GEM_RX_CONFIG_RXDMA_EN);
	FUNC1(sc, GEM_MAC_RX_MASK,
	    GEM_MAC_RX_DONE | GEM_MAC_RX_FRAME_CNT);
	/*
	 * Clear the RX filter and reprogram it.  This will also set the
	 * current RX MAC configuration and enable it.
	 */
	FUNC8(sc);
}