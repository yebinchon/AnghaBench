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
struct jme_txdesc {int /*<<< orphan*/ * tx_dmamap; } ;
struct TYPE_4__ {int /*<<< orphan*/ * jme_ring_tag; int /*<<< orphan*/ * jme_buffer_tag; int /*<<< orphan*/ * jme_ssb_tag; int /*<<< orphan*/  jme_ssb_map; int /*<<< orphan*/ * jme_rx_tag; int /*<<< orphan*/ * jme_rx_sparemap; struct jme_rxdesc* jme_rxdesc; int /*<<< orphan*/ * jme_tx_tag; struct jme_txdesc* jme_txdesc; int /*<<< orphan*/ * jme_rx_ring_tag; int /*<<< orphan*/  jme_rx_ring_map; int /*<<< orphan*/ * jme_tx_ring_tag; int /*<<< orphan*/  jme_tx_ring_map; } ;
struct TYPE_3__ {scalar_t__ jme_ssb_block_paddr; int /*<<< orphan*/ * jme_ssb_block; scalar_t__ jme_rx_ring_paddr; int /*<<< orphan*/ * jme_rx_ring; scalar_t__ jme_tx_ring_paddr; int /*<<< orphan*/ * jme_tx_ring; } ;
struct jme_softc {TYPE_2__ jme_cdata; TYPE_1__ jme_rdata; } ;
struct jme_rxdesc {int /*<<< orphan*/ * rx_dmamap; } ;

/* Variables and functions */
 int JME_RX_RING_CNT ; 
 int JME_TX_RING_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct jme_softc *sc)
{
	struct jme_txdesc *txd;
	struct jme_rxdesc *rxd;
	int i;

	/* Tx ring */
	if (sc->jme_cdata.jme_tx_ring_tag != NULL) {
		if (sc->jme_rdata.jme_tx_ring_paddr)
			FUNC2(sc->jme_cdata.jme_tx_ring_tag,
			    sc->jme_cdata.jme_tx_ring_map);
		if (sc->jme_rdata.jme_tx_ring)
			FUNC3(sc->jme_cdata.jme_tx_ring_tag,
			    sc->jme_rdata.jme_tx_ring,
			    sc->jme_cdata.jme_tx_ring_map);
		sc->jme_rdata.jme_tx_ring = NULL;
		sc->jme_rdata.jme_tx_ring_paddr = 0;
		FUNC0(sc->jme_cdata.jme_tx_ring_tag);
		sc->jme_cdata.jme_tx_ring_tag = NULL;
	}
	/* Rx ring */
	if (sc->jme_cdata.jme_rx_ring_tag != NULL) {
		if (sc->jme_rdata.jme_rx_ring_paddr)
			FUNC2(sc->jme_cdata.jme_rx_ring_tag,
			    sc->jme_cdata.jme_rx_ring_map);
		if (sc->jme_rdata.jme_rx_ring)
			FUNC3(sc->jme_cdata.jme_rx_ring_tag,
			    sc->jme_rdata.jme_rx_ring,
			    sc->jme_cdata.jme_rx_ring_map);
		sc->jme_rdata.jme_rx_ring = NULL;
		sc->jme_rdata.jme_rx_ring_paddr = 0;
		FUNC0(sc->jme_cdata.jme_rx_ring_tag);
		sc->jme_cdata.jme_rx_ring_tag = NULL;
	}
	/* Tx buffers */
	if (sc->jme_cdata.jme_tx_tag != NULL) {
		for (i = 0; i < JME_TX_RING_CNT; i++) {
			txd = &sc->jme_cdata.jme_txdesc[i];
			if (txd->tx_dmamap != NULL) {
				FUNC1(sc->jme_cdata.jme_tx_tag,
				    txd->tx_dmamap);
				txd->tx_dmamap = NULL;
			}
		}
		FUNC0(sc->jme_cdata.jme_tx_tag);
		sc->jme_cdata.jme_tx_tag = NULL;
	}
	/* Rx buffers */
	if (sc->jme_cdata.jme_rx_tag != NULL) {
		for (i = 0; i < JME_RX_RING_CNT; i++) {
			rxd = &sc->jme_cdata.jme_rxdesc[i];
			if (rxd->rx_dmamap != NULL) {
				FUNC1(sc->jme_cdata.jme_rx_tag,
				    rxd->rx_dmamap);
				rxd->rx_dmamap = NULL;
			}
		}
		if (sc->jme_cdata.jme_rx_sparemap != NULL) {
			FUNC1(sc->jme_cdata.jme_rx_tag,
			    sc->jme_cdata.jme_rx_sparemap);
			sc->jme_cdata.jme_rx_sparemap = NULL;
		}
		FUNC0(sc->jme_cdata.jme_rx_tag);
		sc->jme_cdata.jme_rx_tag = NULL;
	}

	/* Shared status block. */
	if (sc->jme_cdata.jme_ssb_tag != NULL) {
		if (sc->jme_rdata.jme_ssb_block_paddr)
			FUNC2(sc->jme_cdata.jme_ssb_tag,
			    sc->jme_cdata.jme_ssb_map);
		if (sc->jme_rdata.jme_ssb_block)
			FUNC3(sc->jme_cdata.jme_ssb_tag,
			    sc->jme_rdata.jme_ssb_block,
			    sc->jme_cdata.jme_ssb_map);
		sc->jme_rdata.jme_ssb_block = NULL;
		sc->jme_rdata.jme_ssb_block_paddr = 0;
		FUNC0(sc->jme_cdata.jme_ssb_tag);
		sc->jme_cdata.jme_ssb_tag = NULL;
	}

	if (sc->jme_cdata.jme_buffer_tag != NULL) {
		FUNC0(sc->jme_cdata.jme_buffer_tag);
		sc->jme_cdata.jme_buffer_tag = NULL;
	}
	if (sc->jme_cdata.jme_ring_tag != NULL) {
		FUNC0(sc->jme_cdata.jme_ring_tag);
		sc->jme_cdata.jme_ring_tag = NULL;
	}
}