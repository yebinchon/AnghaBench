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
struct TYPE_4__ {scalar_t__ bge_parent_tag; scalar_t__ bge_buffer_tag; scalar_t__ bge_stats_tag; int /*<<< orphan*/  bge_stats_map; scalar_t__ bge_status_tag; int /*<<< orphan*/  bge_status_map; scalar_t__ bge_tx_ring_tag; int /*<<< orphan*/  bge_tx_ring_map; scalar_t__ bge_rx_return_ring_tag; int /*<<< orphan*/  bge_rx_return_ring_map; scalar_t__ bge_rx_jumbo_ring_tag; int /*<<< orphan*/  bge_rx_jumbo_ring_map; scalar_t__ bge_rx_std_ring_tag; int /*<<< orphan*/  bge_rx_std_ring_map; scalar_t__ bge_tx_mtag; scalar_t__ bge_mtag_jumbo; scalar_t__ bge_rx_mtag; scalar_t__* bge_tx_dmamap; scalar_t__ bge_rx_jumbo_sparemap; scalar_t__* bge_rx_jumbo_dmamap; scalar_t__ bge_rx_std_sparemap; scalar_t__* bge_rx_std_dmamap; } ;
struct TYPE_3__ {scalar_t__ bge_stats; scalar_t__ bge_stats_paddr; scalar_t__ bge_status_block; scalar_t__ bge_status_block_paddr; scalar_t__ bge_tx_ring; scalar_t__ bge_tx_ring_paddr; scalar_t__ bge_rx_return_ring; scalar_t__ bge_rx_return_ring_paddr; scalar_t__ bge_rx_jumbo_ring; scalar_t__ bge_rx_jumbo_ring_paddr; scalar_t__ bge_rx_std_ring; scalar_t__ bge_rx_std_ring_paddr; } ;
struct bge_softc {TYPE_2__ bge_cdata; TYPE_1__ bge_ldata; } ;

/* Variables and functions */
 int BGE_JUMBO_RX_RING_CNT ; 
 int BGE_STD_RX_RING_CNT ; 
 int BGE_TX_RING_CNT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bge_softc *sc)
{
	int i;

	/* Destroy DMA maps for RX buffers. */
	for (i = 0; i < BGE_STD_RX_RING_CNT; i++) {
		if (sc->bge_cdata.bge_rx_std_dmamap[i])
			FUNC1(sc->bge_cdata.bge_rx_mtag,
			    sc->bge_cdata.bge_rx_std_dmamap[i]);
	}
	if (sc->bge_cdata.bge_rx_std_sparemap)
		FUNC1(sc->bge_cdata.bge_rx_mtag,
		    sc->bge_cdata.bge_rx_std_sparemap);

	/* Destroy DMA maps for jumbo RX buffers. */
	for (i = 0; i < BGE_JUMBO_RX_RING_CNT; i++) {
		if (sc->bge_cdata.bge_rx_jumbo_dmamap[i])
			FUNC1(sc->bge_cdata.bge_mtag_jumbo,
			    sc->bge_cdata.bge_rx_jumbo_dmamap[i]);
	}
	if (sc->bge_cdata.bge_rx_jumbo_sparemap)
		FUNC1(sc->bge_cdata.bge_mtag_jumbo,
		    sc->bge_cdata.bge_rx_jumbo_sparemap);

	/* Destroy DMA maps for TX buffers. */
	for (i = 0; i < BGE_TX_RING_CNT; i++) {
		if (sc->bge_cdata.bge_tx_dmamap[i])
			FUNC1(sc->bge_cdata.bge_tx_mtag,
			    sc->bge_cdata.bge_tx_dmamap[i]);
	}

	if (sc->bge_cdata.bge_rx_mtag)
		FUNC0(sc->bge_cdata.bge_rx_mtag);
	if (sc->bge_cdata.bge_mtag_jumbo)
		FUNC0(sc->bge_cdata.bge_mtag_jumbo);
	if (sc->bge_cdata.bge_tx_mtag)
		FUNC0(sc->bge_cdata.bge_tx_mtag);

	/* Destroy standard RX ring. */
	if (sc->bge_ldata.bge_rx_std_ring_paddr)
		FUNC2(sc->bge_cdata.bge_rx_std_ring_tag,
		    sc->bge_cdata.bge_rx_std_ring_map);
	if (sc->bge_ldata.bge_rx_std_ring)
		FUNC3(sc->bge_cdata.bge_rx_std_ring_tag,
		    sc->bge_ldata.bge_rx_std_ring,
		    sc->bge_cdata.bge_rx_std_ring_map);

	if (sc->bge_cdata.bge_rx_std_ring_tag)
		FUNC0(sc->bge_cdata.bge_rx_std_ring_tag);

	/* Destroy jumbo RX ring. */
	if (sc->bge_ldata.bge_rx_jumbo_ring_paddr)
		FUNC2(sc->bge_cdata.bge_rx_jumbo_ring_tag,
		    sc->bge_cdata.bge_rx_jumbo_ring_map);

	if (sc->bge_ldata.bge_rx_jumbo_ring)
		FUNC3(sc->bge_cdata.bge_rx_jumbo_ring_tag,
		    sc->bge_ldata.bge_rx_jumbo_ring,
		    sc->bge_cdata.bge_rx_jumbo_ring_map);

	if (sc->bge_cdata.bge_rx_jumbo_ring_tag)
		FUNC0(sc->bge_cdata.bge_rx_jumbo_ring_tag);

	/* Destroy RX return ring. */
	if (sc->bge_ldata.bge_rx_return_ring_paddr)
		FUNC2(sc->bge_cdata.bge_rx_return_ring_tag,
		    sc->bge_cdata.bge_rx_return_ring_map);

	if (sc->bge_ldata.bge_rx_return_ring)
		FUNC3(sc->bge_cdata.bge_rx_return_ring_tag,
		    sc->bge_ldata.bge_rx_return_ring,
		    sc->bge_cdata.bge_rx_return_ring_map);

	if (sc->bge_cdata.bge_rx_return_ring_tag)
		FUNC0(sc->bge_cdata.bge_rx_return_ring_tag);

	/* Destroy TX ring. */
	if (sc->bge_ldata.bge_tx_ring_paddr)
		FUNC2(sc->bge_cdata.bge_tx_ring_tag,
		    sc->bge_cdata.bge_tx_ring_map);

	if (sc->bge_ldata.bge_tx_ring)
		FUNC3(sc->bge_cdata.bge_tx_ring_tag,
		    sc->bge_ldata.bge_tx_ring,
		    sc->bge_cdata.bge_tx_ring_map);

	if (sc->bge_cdata.bge_tx_ring_tag)
		FUNC0(sc->bge_cdata.bge_tx_ring_tag);

	/* Destroy status block. */
	if (sc->bge_ldata.bge_status_block_paddr)
		FUNC2(sc->bge_cdata.bge_status_tag,
		    sc->bge_cdata.bge_status_map);

	if (sc->bge_ldata.bge_status_block)
		FUNC3(sc->bge_cdata.bge_status_tag,
		    sc->bge_ldata.bge_status_block,
		    sc->bge_cdata.bge_status_map);

	if (sc->bge_cdata.bge_status_tag)
		FUNC0(sc->bge_cdata.bge_status_tag);

	/* Destroy statistics block. */
	if (sc->bge_ldata.bge_stats_paddr)
		FUNC2(sc->bge_cdata.bge_stats_tag,
		    sc->bge_cdata.bge_stats_map);

	if (sc->bge_ldata.bge_stats)
		FUNC3(sc->bge_cdata.bge_stats_tag,
		    sc->bge_ldata.bge_stats,
		    sc->bge_cdata.bge_stats_map);

	if (sc->bge_cdata.bge_stats_tag)
		FUNC0(sc->bge_cdata.bge_stats_tag);

	if (sc->bge_cdata.bge_buffer_tag)
		FUNC0(sc->bge_cdata.bge_buffer_tag);

	/* Destroy the parent tag. */
	if (sc->bge_cdata.bge_parent_tag)
		FUNC0(sc->bge_cdata.bge_parent_tag);
}