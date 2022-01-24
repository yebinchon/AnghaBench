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
struct TYPE_6__ {int /*<<< orphan*/ * ti_parent_tag; int /*<<< orphan*/  ti_gib_map; int /*<<< orphan*/  ti_gib_tag; int /*<<< orphan*/  ti_event_ring_map; int /*<<< orphan*/  ti_event_ring_tag; int /*<<< orphan*/  ti_status_map; int /*<<< orphan*/  ti_status_tag; int /*<<< orphan*/  ti_tx_ring_map; int /*<<< orphan*/  ti_tx_ring_tag; int /*<<< orphan*/  ti_rx_return_ring_map; int /*<<< orphan*/  ti_rx_return_ring_tag; int /*<<< orphan*/  ti_rx_mini_ring_map; int /*<<< orphan*/  ti_rx_mini_ring_tag; int /*<<< orphan*/  ti_rx_jumbo_ring_map; int /*<<< orphan*/  ti_rx_jumbo_ring_tag; int /*<<< orphan*/  ti_rx_std_ring_map; int /*<<< orphan*/  ti_rx_std_ring_tag; int /*<<< orphan*/ * ti_tx_tag; TYPE_2__* ti_txdesc; int /*<<< orphan*/ * ti_rx_mini_tag; int /*<<< orphan*/ * ti_rx_mini_sparemap; int /*<<< orphan*/ ** ti_rx_mini_maps; int /*<<< orphan*/ * ti_rx_jumbo_tag; int /*<<< orphan*/ * ti_rx_jumbo_sparemap; int /*<<< orphan*/ ** ti_rx_jumbo_maps; int /*<<< orphan*/ * ti_rx_std_tag; int /*<<< orphan*/ * ti_rx_std_sparemap; int /*<<< orphan*/ ** ti_rx_std_maps; } ;
struct TYPE_4__ {int /*<<< orphan*/  ti_info_paddr; int /*<<< orphan*/  ti_info; int /*<<< orphan*/  ti_event_ring_paddr; int /*<<< orphan*/  ti_event_ring; int /*<<< orphan*/  ti_status_paddr; int /*<<< orphan*/  ti_status; int /*<<< orphan*/  ti_tx_ring_paddr; int /*<<< orphan*/  ti_tx_ring; int /*<<< orphan*/  ti_rx_return_ring_paddr; int /*<<< orphan*/  ti_rx_return_ring; int /*<<< orphan*/  ti_rx_mini_ring_paddr; int /*<<< orphan*/  ti_rx_mini_ring; int /*<<< orphan*/  ti_rx_jumbo_ring_paddr; int /*<<< orphan*/  ti_rx_jumbo_ring; int /*<<< orphan*/  ti_rx_std_ring_paddr; int /*<<< orphan*/  ti_rx_std_ring; } ;
struct ti_softc {TYPE_3__ ti_cdata; TYPE_1__ ti_rdata; } ;
struct TYPE_5__ {int /*<<< orphan*/ * tx_dmamap; } ;

/* Variables and functions */
 int TI_JUMBO_RX_RING_CNT ; 
 int TI_MINI_RX_RING_CNT ; 
 int TI_STD_RX_RING_CNT ; 
 int TI_TX_RING_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_softc*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct ti_softc *sc)
{
	int i;

	/* Destroy DMA maps for RX buffers. */
	for (i = 0; i < TI_STD_RX_RING_CNT; i++) {
		if (sc->ti_cdata.ti_rx_std_maps[i]) {
			FUNC1(sc->ti_cdata.ti_rx_std_tag,
			    sc->ti_cdata.ti_rx_std_maps[i]);
			sc->ti_cdata.ti_rx_std_maps[i] = NULL;
		}
	}
	if (sc->ti_cdata.ti_rx_std_sparemap) {
		FUNC1(sc->ti_cdata.ti_rx_std_tag,
		    sc->ti_cdata.ti_rx_std_sparemap);
		sc->ti_cdata.ti_rx_std_sparemap = NULL;
	}
	if (sc->ti_cdata.ti_rx_std_tag) {
		FUNC0(sc->ti_cdata.ti_rx_std_tag);
		sc->ti_cdata.ti_rx_std_tag = NULL;
	}

	/* Destroy DMA maps for jumbo RX buffers. */
	for (i = 0; i < TI_JUMBO_RX_RING_CNT; i++) {
		if (sc->ti_cdata.ti_rx_jumbo_maps[i]) {
			FUNC1(sc->ti_cdata.ti_rx_jumbo_tag,
			    sc->ti_cdata.ti_rx_jumbo_maps[i]);
			sc->ti_cdata.ti_rx_jumbo_maps[i] = NULL;
		}
	}
	if (sc->ti_cdata.ti_rx_jumbo_sparemap) {
		FUNC1(sc->ti_cdata.ti_rx_jumbo_tag,
		    sc->ti_cdata.ti_rx_jumbo_sparemap);
		sc->ti_cdata.ti_rx_jumbo_sparemap = NULL;
	}
	if (sc->ti_cdata.ti_rx_jumbo_tag) {
		FUNC0(sc->ti_cdata.ti_rx_jumbo_tag);
		sc->ti_cdata.ti_rx_jumbo_tag = NULL;
	}

	/* Destroy DMA maps for mini RX buffers. */
	for (i = 0; i < TI_MINI_RX_RING_CNT; i++) {
		if (sc->ti_cdata.ti_rx_mini_maps[i]) {
			FUNC1(sc->ti_cdata.ti_rx_mini_tag,
			    sc->ti_cdata.ti_rx_mini_maps[i]);
			sc->ti_cdata.ti_rx_mini_maps[i] = NULL;
		}
	}
	if (sc->ti_cdata.ti_rx_mini_sparemap) {
		FUNC1(sc->ti_cdata.ti_rx_mini_tag,
		    sc->ti_cdata.ti_rx_mini_sparemap);
		sc->ti_cdata.ti_rx_mini_sparemap = NULL;
	}
	if (sc->ti_cdata.ti_rx_mini_tag) {
		FUNC0(sc->ti_cdata.ti_rx_mini_tag);
		sc->ti_cdata.ti_rx_mini_tag = NULL;
	}

	/* Destroy DMA maps for TX buffers. */
	for (i = 0; i < TI_TX_RING_CNT; i++) {
		if (sc->ti_cdata.ti_txdesc[i].tx_dmamap) {
			FUNC1(sc->ti_cdata.ti_tx_tag,
			    sc->ti_cdata.ti_txdesc[i].tx_dmamap);
			sc->ti_cdata.ti_txdesc[i].tx_dmamap = NULL;
		}
	}
	if (sc->ti_cdata.ti_tx_tag) {
		FUNC0(sc->ti_cdata.ti_tx_tag);
		sc->ti_cdata.ti_tx_tag = NULL;
	}

	/* Destroy standard RX ring. */
	FUNC2(sc, &sc->ti_cdata.ti_rx_std_ring_tag,
	    (void *)&sc->ti_rdata.ti_rx_std_ring,
	    sc->ti_cdata.ti_rx_std_ring_map,
	    &sc->ti_rdata.ti_rx_std_ring_paddr);
	/* Destroy jumbo RX ring. */
	FUNC2(sc, &sc->ti_cdata.ti_rx_jumbo_ring_tag,
	    (void *)&sc->ti_rdata.ti_rx_jumbo_ring,
	    sc->ti_cdata.ti_rx_jumbo_ring_map,
	    &sc->ti_rdata.ti_rx_jumbo_ring_paddr);
	/* Destroy mini RX ring. */
	FUNC2(sc, &sc->ti_cdata.ti_rx_mini_ring_tag,
	    (void *)&sc->ti_rdata.ti_rx_mini_ring,
	    sc->ti_cdata.ti_rx_mini_ring_map,
	    &sc->ti_rdata.ti_rx_mini_ring_paddr);
	/* Destroy RX return ring. */
	FUNC2(sc, &sc->ti_cdata.ti_rx_return_ring_tag,
	    (void *)&sc->ti_rdata.ti_rx_return_ring,
	    sc->ti_cdata.ti_rx_return_ring_map,
	    &sc->ti_rdata.ti_rx_return_ring_paddr);
	/* Destroy TX ring. */
	FUNC2(sc, &sc->ti_cdata.ti_tx_ring_tag,
	    (void *)&sc->ti_rdata.ti_tx_ring, sc->ti_cdata.ti_tx_ring_map,
	    &sc->ti_rdata.ti_tx_ring_paddr);
	/* Destroy status block. */
	FUNC2(sc, &sc->ti_cdata.ti_status_tag,
	    (void *)&sc->ti_rdata.ti_status, sc->ti_cdata.ti_status_map,
	    &sc->ti_rdata.ti_status_paddr);
	/* Destroy event ring. */
	FUNC2(sc, &sc->ti_cdata.ti_event_ring_tag,
	    (void *)&sc->ti_rdata.ti_event_ring,
	    sc->ti_cdata.ti_event_ring_map, &sc->ti_rdata.ti_event_ring_paddr);
	/* Destroy GIB */
	FUNC2(sc, &sc->ti_cdata.ti_gib_tag,
	    (void *)&sc->ti_rdata.ti_info, sc->ti_cdata.ti_gib_map,
	    &sc->ti_rdata.ti_info_paddr);

	/* Destroy the parent tag. */
	if (sc->ti_cdata.ti_parent_tag) {
		FUNC0(sc->ti_cdata.ti_parent_tag);
		sc->ti_cdata.ti_parent_tag = NULL;
	}
}