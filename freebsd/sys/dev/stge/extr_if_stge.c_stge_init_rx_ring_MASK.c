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
struct TYPE_3__ {int /*<<< orphan*/  stge_rx_ring_map; int /*<<< orphan*/  stge_rx_ring_tag; scalar_t__ stge_rx_cons; } ;
struct stge_ring_data {TYPE_2__* stge_rx_ring; } ;
struct stge_softc {TYPE_1__ sc_cdata; struct stge_ring_data sc_rdata; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;
struct TYPE_4__ {scalar_t__ rfd_status; int /*<<< orphan*/  rfd_next; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct stge_softc*,int) ; 
 int STGE_RX_RING_CNT ; 
 int /*<<< orphan*/  STGE_RX_RING_SZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct stge_softc*,int) ; 

__attribute__((used)) static int
FUNC6(struct stge_softc *sc)
{
	struct stge_ring_data *rd;
	bus_addr_t addr;
	int i;

	sc->sc_cdata.stge_rx_cons = 0;
	FUNC0(sc);

	rd = &sc->sc_rdata;
	FUNC3(rd->stge_rx_ring, STGE_RX_RING_SZ);
	for (i = 0; i < STGE_RX_RING_CNT; i++) {
		if (FUNC5(sc, i) != 0)
			return (ENOBUFS);
		if (i == (STGE_RX_RING_CNT - 1))
			addr = FUNC1(sc, 0);
		else
			addr = FUNC1(sc, i + 1);
		rd->stge_rx_ring[i].rfd_next = FUNC4(addr);
		rd->stge_rx_ring[i].rfd_status = 0;
	}

	FUNC2(sc->sc_cdata.stge_rx_ring_tag,
	    sc->sc_cdata.stge_rx_ring_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	return (0);
}