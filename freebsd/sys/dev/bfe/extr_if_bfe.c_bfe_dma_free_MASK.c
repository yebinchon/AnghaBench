#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bfe_tx_data {int /*<<< orphan*/ * bfe_map; } ;
struct bfe_softc {scalar_t__ bfe_tx_dma; scalar_t__ bfe_rx_dma; int /*<<< orphan*/ * bfe_parent_tag; int /*<<< orphan*/ * bfe_rxmbuf_tag; int /*<<< orphan*/ * bfe_rx_sparemap; struct bfe_rx_data* bfe_rx_ring; int /*<<< orphan*/ * bfe_txmbuf_tag; struct bfe_tx_data* bfe_tx_ring; int /*<<< orphan*/ * bfe_rx_tag; int /*<<< orphan*/ * bfe_rx_list; int /*<<< orphan*/  bfe_rx_map; int /*<<< orphan*/ * bfe_tx_tag; int /*<<< orphan*/ * bfe_tx_list; int /*<<< orphan*/  bfe_tx_map; } ;
struct bfe_rx_data {int /*<<< orphan*/ * bfe_map; } ;

/* Variables and functions */
 int BFE_RX_LIST_CNT ; 
 int BFE_TX_LIST_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bfe_softc *sc)
{
	struct bfe_tx_data *td;
	struct bfe_rx_data *rd;
	int i;

	/* Tx ring. */
	if (sc->bfe_tx_tag != NULL) {
		if (sc->bfe_tx_dma != 0)
			FUNC2(sc->bfe_tx_tag, sc->bfe_tx_map);
		if (sc->bfe_tx_list != NULL)
			FUNC3(sc->bfe_tx_tag, sc->bfe_tx_list,
			    sc->bfe_tx_map);
		sc->bfe_tx_dma = 0;
		sc->bfe_tx_list = NULL;
		FUNC0(sc->bfe_tx_tag);
		sc->bfe_tx_tag = NULL;
	}

	/* Rx ring. */
	if (sc->bfe_rx_tag != NULL) {
		if (sc->bfe_rx_dma != 0)
			FUNC2(sc->bfe_rx_tag, sc->bfe_rx_map);
		if (sc->bfe_rx_list != NULL)
			FUNC3(sc->bfe_rx_tag, sc->bfe_rx_list,
			    sc->bfe_rx_map);
		sc->bfe_rx_dma = 0;
		sc->bfe_rx_list = NULL;
		FUNC0(sc->bfe_rx_tag);
		sc->bfe_rx_tag = NULL;
	}

	/* Tx buffers. */
	if (sc->bfe_txmbuf_tag != NULL) {
		for (i = 0; i < BFE_TX_LIST_CNT; i++) {
			td = &sc->bfe_tx_ring[i];
			if (td->bfe_map != NULL) {
				FUNC1(sc->bfe_txmbuf_tag,
				    td->bfe_map);
				td->bfe_map = NULL;
			}
		}
		FUNC0(sc->bfe_txmbuf_tag);
		sc->bfe_txmbuf_tag = NULL;
	}

	/* Rx buffers. */
	if (sc->bfe_rxmbuf_tag != NULL) {
		for (i = 0; i < BFE_RX_LIST_CNT; i++) {
			rd = &sc->bfe_rx_ring[i];
			if (rd->bfe_map != NULL) {
				FUNC1(sc->bfe_rxmbuf_tag,
				    rd->bfe_map);
				rd->bfe_map = NULL;
			}
		}
		if (sc->bfe_rx_sparemap != NULL) {
			FUNC1(sc->bfe_rxmbuf_tag,
			    sc->bfe_rx_sparemap);
			sc->bfe_rx_sparemap = NULL;
		}
		FUNC0(sc->bfe_rxmbuf_tag);
		sc->bfe_rxmbuf_tag = NULL;
	}

	if (sc->bfe_parent_tag != NULL) {
		FUNC0(sc->bfe_parent_tag);
		sc->bfe_parent_tag = NULL;
	}
}