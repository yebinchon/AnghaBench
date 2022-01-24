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
struct rtwn_tx_ring {scalar_t__ cur; scalar_t__ last; scalar_t__ queued; int /*<<< orphan*/ * data_dmat; struct rtwn_tx_data* tx_data; int /*<<< orphan*/ * desc_dmat; int /*<<< orphan*/  desc_map; int /*<<< orphan*/ * desc; } ;
struct rtwn_tx_data {int /*<<< orphan*/ * m; int /*<<< orphan*/  map; } ;
struct rtwn_softc {int qfullmsk; } ;
struct rtwn_pci_softc {struct rtwn_tx_ring* tx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 struct rtwn_pci_softc* FUNC0 (struct rtwn_softc*) ; 
 int RTWN_PCI_TX_LIST_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct rtwn_softc *sc, int qid)
{
	struct rtwn_pci_softc *pc = FUNC0(sc);
	struct rtwn_tx_ring *tx_ring = &pc->tx_ring[qid];
	struct rtwn_tx_data *tx_data;
	int i;

	if (tx_ring->desc_dmat != NULL) {
		if (tx_ring->desc != NULL) {
			FUNC2(tx_ring->desc_dmat,
			    tx_ring->desc_map, BUS_DMASYNC_POSTWRITE);
			FUNC3(tx_ring->desc_dmat,
			    tx_ring->desc_map);
			FUNC4(tx_ring->desc_dmat, tx_ring->desc,
			    tx_ring->desc_map);
		}
		FUNC1(tx_ring->desc_dmat);
	}

	for (i = 0; i < RTWN_PCI_TX_LIST_COUNT; i++) {
		tx_data = &tx_ring->tx_data[i];

		if (tx_data->m != NULL) {
			FUNC2(tx_ring->data_dmat, tx_data->map,
			    BUS_DMASYNC_POSTWRITE);
			FUNC3(tx_ring->data_dmat, tx_data->map);
			FUNC5(tx_data->m);
			tx_data->m = NULL;
		}
	}
	if (tx_ring->data_dmat != NULL) {
		FUNC1(tx_ring->data_dmat);
		tx_ring->data_dmat = NULL;
	}

	sc->qfullmsk &= ~(1 << qid);
	tx_ring->queued = 0;
	tx_ring->last = tx_ring->cur = 0;
}