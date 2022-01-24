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
struct TYPE_2__ {int /*<<< orphan*/  vte_rx_ring_map; int /*<<< orphan*/  vte_rx_ring_tag; struct vte_rx_desc* vte_rx_ring; scalar_t__ vte_rx_ring_paddr; struct vte_rxdesc* vte_rxdesc; scalar_t__ vte_rx_cons; } ;
struct vte_softc {TYPE_1__ vte_cdata; } ;
struct vte_rxdesc {struct vte_rx_desc* rx_desc; int /*<<< orphan*/ * rx_m; } ;
struct vte_rx_desc {int /*<<< orphan*/  drnp; } ;
typedef  scalar_t__ bus_addr_t ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (struct vte_softc*) ; 
 int VTE_RX_RING_CNT ; 
 int /*<<< orphan*/  VTE_RX_RING_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vte_rx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct vte_softc*,struct vte_rxdesc*) ; 

__attribute__((used)) static int
FUNC5(struct vte_softc *sc)
{
	struct vte_rx_desc *desc;
	struct vte_rxdesc *rxd;
	bus_addr_t addr;
	int i;

	FUNC0(sc);

	sc->vte_cdata.vte_rx_cons = 0;
	desc = sc->vte_cdata.vte_rx_ring;
	FUNC2(desc, VTE_RX_RING_SZ);
	for (i = 0; i < VTE_RX_RING_CNT; i++) {
		rxd = &sc->vte_cdata.vte_rxdesc[i];
		rxd->rx_m = NULL;
		if (i != VTE_RX_RING_CNT - 1)
			addr = sc->vte_cdata.vte_rx_ring_paddr +
			    sizeof(struct vte_rx_desc) * (i + 1);
		else
			addr = sc->vte_cdata.vte_rx_ring_paddr +
			    sizeof(struct vte_rx_desc) * 0;
		desc = &sc->vte_cdata.vte_rx_ring[i];
		desc->drnp = FUNC3(addr);
		rxd->rx_desc = desc;
		if (FUNC4(sc, rxd) != 0)
			return (ENOBUFS);
	}

	FUNC1(sc->vte_cdata.vte_rx_ring_tag,
	    sc->vte_cdata.vte_rx_ring_map, BUS_DMASYNC_PREREAD |
	    BUS_DMASYNC_PREWRITE);

	return (0);
}