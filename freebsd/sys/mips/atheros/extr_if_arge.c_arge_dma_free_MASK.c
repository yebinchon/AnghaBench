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
struct arge_txdesc {int /*<<< orphan*/ * tx_dmamap; } ;
struct TYPE_4__ {int /*<<< orphan*/ * arge_parent_tag; int /*<<< orphan*/ * arge_rx_tag; int /*<<< orphan*/ * arge_rx_sparemap; struct arge_rxdesc* arge_rxdesc; int /*<<< orphan*/ * arge_tx_tag; struct arge_txdesc* arge_txdesc; int /*<<< orphan*/ * arge_rx_ring_tag; int /*<<< orphan*/  arge_rx_ring_map; int /*<<< orphan*/ * arge_tx_ring_tag; int /*<<< orphan*/  arge_tx_ring_map; } ;
struct TYPE_3__ {scalar_t__ arge_rx_ring_paddr; int /*<<< orphan*/ * arge_rx_ring; scalar_t__ arge_tx_ring_paddr; int /*<<< orphan*/ * arge_tx_ring; } ;
struct arge_softc {TYPE_2__ arge_cdata; TYPE_1__ arge_rdata; } ;
struct arge_rxdesc {int /*<<< orphan*/ * rx_dmamap; } ;

/* Variables and functions */
 int ARGE_RX_RING_COUNT ; 
 int ARGE_TX_RING_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct arge_softc *sc)
{
	struct arge_txdesc	*txd;
	struct arge_rxdesc	*rxd;
	int			i;

	/* Tx ring. */
	if (sc->arge_cdata.arge_tx_ring_tag) {
		if (sc->arge_rdata.arge_tx_ring_paddr)
			FUNC2(sc->arge_cdata.arge_tx_ring_tag,
			    sc->arge_cdata.arge_tx_ring_map);
		if (sc->arge_rdata.arge_tx_ring)
			FUNC3(sc->arge_cdata.arge_tx_ring_tag,
			    sc->arge_rdata.arge_tx_ring,
			    sc->arge_cdata.arge_tx_ring_map);
		sc->arge_rdata.arge_tx_ring = NULL;
		sc->arge_rdata.arge_tx_ring_paddr = 0;
		FUNC0(sc->arge_cdata.arge_tx_ring_tag);
		sc->arge_cdata.arge_tx_ring_tag = NULL;
	}
	/* Rx ring. */
	if (sc->arge_cdata.arge_rx_ring_tag) {
		if (sc->arge_rdata.arge_rx_ring_paddr)
			FUNC2(sc->arge_cdata.arge_rx_ring_tag,
			    sc->arge_cdata.arge_rx_ring_map);
		if (sc->arge_rdata.arge_rx_ring)
			FUNC3(sc->arge_cdata.arge_rx_ring_tag,
			    sc->arge_rdata.arge_rx_ring,
			    sc->arge_cdata.arge_rx_ring_map);
		sc->arge_rdata.arge_rx_ring = NULL;
		sc->arge_rdata.arge_rx_ring_paddr = 0;
		FUNC0(sc->arge_cdata.arge_rx_ring_tag);
		sc->arge_cdata.arge_rx_ring_tag = NULL;
	}
	/* Tx buffers. */
	if (sc->arge_cdata.arge_tx_tag) {
		for (i = 0; i < ARGE_TX_RING_COUNT; i++) {
			txd = &sc->arge_cdata.arge_txdesc[i];
			if (txd->tx_dmamap) {
				FUNC1(sc->arge_cdata.arge_tx_tag,
				    txd->tx_dmamap);
				txd->tx_dmamap = NULL;
			}
		}
		FUNC0(sc->arge_cdata.arge_tx_tag);
		sc->arge_cdata.arge_tx_tag = NULL;
	}
	/* Rx buffers. */
	if (sc->arge_cdata.arge_rx_tag) {
		for (i = 0; i < ARGE_RX_RING_COUNT; i++) {
			rxd = &sc->arge_cdata.arge_rxdesc[i];
			if (rxd->rx_dmamap) {
				FUNC1(sc->arge_cdata.arge_rx_tag,
				    rxd->rx_dmamap);
				rxd->rx_dmamap = NULL;
			}
		}
		if (sc->arge_cdata.arge_rx_sparemap) {
			FUNC1(sc->arge_cdata.arge_rx_tag,
			    sc->arge_cdata.arge_rx_sparemap);
			sc->arge_cdata.arge_rx_sparemap = 0;
		}
		FUNC0(sc->arge_cdata.arge_rx_tag);
		sc->arge_cdata.arge_rx_tag = NULL;
	}

	if (sc->arge_cdata.arge_parent_tag) {
		FUNC0(sc->arge_cdata.arge_parent_tag);
		sc->arge_cdata.arge_parent_tag = NULL;
	}
}