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
struct TYPE_3__ {int /*<<< orphan*/  nge_rx_ring_map; int /*<<< orphan*/  nge_rx_ring_tag; scalar_t__ nge_rx_cons; } ;
struct nge_ring_data {TYPE_2__* nge_rx_ring; } ;
struct nge_softc {TYPE_1__ nge_cdata; struct nge_ring_data nge_rdata; int /*<<< orphan*/ * nge_tail; int /*<<< orphan*/  nge_head; } ;
struct nge_desc {int dummy; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  nge_next; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nge_softc*,int) ; 
 int NGE_RX_RING_CNT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct nge_softc*,int) ; 

__attribute__((used)) static int
FUNC6(struct nge_softc *sc)
{
	struct nge_ring_data *rd;
	bus_addr_t addr;
	int i;

	sc->nge_cdata.nge_rx_cons = 0;
	sc->nge_head = *(sc->nge_tail = NULL);

	rd = &sc->nge_rdata;
	FUNC3(rd->nge_rx_ring, sizeof(struct nge_desc) * NGE_RX_RING_CNT);
	for (i = 0; i < NGE_RX_RING_CNT; i++) {
		if (FUNC5(sc, i) != 0)
			return (ENOBUFS);
		if (i == NGE_RX_RING_CNT - 1)
			addr = FUNC1(sc, 0);
		else
			addr = FUNC1(sc, i + 1);
		rd->nge_rx_ring[i].nge_next = FUNC4(FUNC0(addr));
	}

	FUNC2(sc->nge_cdata.nge_rx_ring_tag,
	    sc->nge_cdata.nge_rx_ring_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	return (0);
}