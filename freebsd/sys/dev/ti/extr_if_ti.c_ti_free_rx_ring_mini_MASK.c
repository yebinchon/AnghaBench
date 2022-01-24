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
struct TYPE_4__ {int /*<<< orphan*/  ti_rx_mini_ring_map; int /*<<< orphan*/  ti_rx_mini_ring_tag; int /*<<< orphan*/ ** ti_rx_mini_chain; int /*<<< orphan*/  ti_rx_mini_tag; int /*<<< orphan*/ * ti_rx_mini_maps; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ti_rx_mini_ring; } ;
struct ti_softc {TYPE_2__ ti_cdata; TYPE_1__ ti_rdata; } ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int TI_MINI_RX_RING_CNT ; 
 int /*<<< orphan*/  TI_MINI_RX_RING_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct ti_softc *sc)
{
	bus_dmamap_t map;
	int i;

	if (sc->ti_rdata.ti_rx_mini_ring == NULL)
		return;

	for (i = 0; i < TI_MINI_RX_RING_CNT; i++) {
		if (sc->ti_cdata.ti_rx_mini_chain[i] != NULL) {
			map = sc->ti_cdata.ti_rx_mini_maps[i];
			FUNC0(sc->ti_cdata.ti_rx_mini_tag, map,
			    BUS_DMASYNC_POSTREAD);
			FUNC1(sc->ti_cdata.ti_rx_mini_tag, map);
			FUNC3(sc->ti_cdata.ti_rx_mini_chain[i]);
			sc->ti_cdata.ti_rx_mini_chain[i] = NULL;
		}
	}
	FUNC2(sc->ti_rdata.ti_rx_mini_ring, TI_MINI_RX_RING_SZ);
	FUNC0(sc->ti_cdata.ti_rx_mini_ring_tag,
	    sc->ti_cdata.ti_rx_mini_ring_map, BUS_DMASYNC_PREWRITE);
}