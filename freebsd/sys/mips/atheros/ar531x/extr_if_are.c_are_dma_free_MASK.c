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
struct are_txdesc {int /*<<< orphan*/ * tx_dmamap; } ;
struct TYPE_4__ {int /*<<< orphan*/ * are_parent_tag; int /*<<< orphan*/ * are_rx_tag; int /*<<< orphan*/ * are_rx_sparemap; struct are_rxdesc* are_rxdesc; int /*<<< orphan*/ * are_tx_tag; struct are_txdesc* are_txdesc; int /*<<< orphan*/ * are_rx_ring_tag; int /*<<< orphan*/  are_rx_ring_map; int /*<<< orphan*/ * are_tx_ring_tag; int /*<<< orphan*/  are_tx_ring_map; } ;
struct TYPE_3__ {scalar_t__ are_rx_ring_paddr; int /*<<< orphan*/ * are_rx_ring; scalar_t__ are_tx_ring_paddr; int /*<<< orphan*/ * are_tx_ring; } ;
struct are_softc {TYPE_2__ are_cdata; TYPE_1__ are_rdata; } ;
struct are_rxdesc {int /*<<< orphan*/ * rx_dmamap; } ;

/* Variables and functions */
 int ARE_RX_RING_CNT ; 
 int ARE_TX_RING_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct are_softc *sc)
{
	struct are_txdesc	*txd;
	struct are_rxdesc	*rxd;
	int			i;

	/* Tx ring. */
	if (sc->are_cdata.are_tx_ring_tag) {
		if (sc->are_rdata.are_tx_ring_paddr)
			FUNC2(sc->are_cdata.are_tx_ring_tag,
			    sc->are_cdata.are_tx_ring_map);
		if (sc->are_rdata.are_tx_ring)
			FUNC3(sc->are_cdata.are_tx_ring_tag,
			    sc->are_rdata.are_tx_ring,
			    sc->are_cdata.are_tx_ring_map);
		sc->are_rdata.are_tx_ring = NULL;
		sc->are_rdata.are_tx_ring_paddr = 0;
		FUNC0(sc->are_cdata.are_tx_ring_tag);
		sc->are_cdata.are_tx_ring_tag = NULL;
	}
	/* Rx ring. */
	if (sc->are_cdata.are_rx_ring_tag) {
		if (sc->are_rdata.are_rx_ring_paddr)
			FUNC2(sc->are_cdata.are_rx_ring_tag,
			    sc->are_cdata.are_rx_ring_map);
		if (sc->are_rdata.are_rx_ring)
			FUNC3(sc->are_cdata.are_rx_ring_tag,
			    sc->are_rdata.are_rx_ring,
			    sc->are_cdata.are_rx_ring_map);
		sc->are_rdata.are_rx_ring = NULL;
		sc->are_rdata.are_rx_ring_paddr = 0;
		FUNC0(sc->are_cdata.are_rx_ring_tag);
		sc->are_cdata.are_rx_ring_tag = NULL;
	}
	/* Tx buffers. */
	if (sc->are_cdata.are_tx_tag) {
		for (i = 0; i < ARE_TX_RING_CNT; i++) {
			txd = &sc->are_cdata.are_txdesc[i];
			if (txd->tx_dmamap) {
				FUNC1(sc->are_cdata.are_tx_tag,
				    txd->tx_dmamap);
				txd->tx_dmamap = NULL;
			}
		}
		FUNC0(sc->are_cdata.are_tx_tag);
		sc->are_cdata.are_tx_tag = NULL;
	}
	/* Rx buffers. */
	if (sc->are_cdata.are_rx_tag) {
		for (i = 0; i < ARE_RX_RING_CNT; i++) {
			rxd = &sc->are_cdata.are_rxdesc[i];
			if (rxd->rx_dmamap) {
				FUNC1(sc->are_cdata.are_rx_tag,
				    rxd->rx_dmamap);
				rxd->rx_dmamap = NULL;
			}
		}
		if (sc->are_cdata.are_rx_sparemap) {
			FUNC1(sc->are_cdata.are_rx_tag,
			    sc->are_cdata.are_rx_sparemap);
			sc->are_cdata.are_rx_sparemap = 0;
		}
		FUNC0(sc->are_cdata.are_rx_tag);
		sc->are_cdata.are_rx_tag = NULL;
	}

	if (sc->are_cdata.are_parent_tag) {
		FUNC0(sc->are_cdata.are_parent_tag);
		sc->are_cdata.are_parent_tag = NULL;
	}
}