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
typedef  int /*<<< orphan*/  uint8_t ;
struct rtwn_tx_ring {scalar_t__ cur; scalar_t__ last; scalar_t__ queued; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_dmat; int /*<<< orphan*/  data_dmat; scalar_t__ desc; struct rtwn_tx_data* tx_data; } ;
struct rtwn_tx_data {int /*<<< orphan*/ * ni; int /*<<< orphan*/ * m; int /*<<< orphan*/  map; } ;
struct rtwn_softc {int txdesc_len; int qfullmsk; } ;
struct rtwn_pci_softc {struct rtwn_tx_ring* tx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 struct rtwn_pci_softc* FUNC0 (struct rtwn_softc*) ; 
 int RTWN_PCI_TX_LIST_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_pci_softc*,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct rtwn_softc *sc, int qid)
{
	struct rtwn_pci_softc *pc = FUNC0(sc);
	struct rtwn_tx_ring *ring = &pc->tx_ring[qid];
	int i;

	for (i = 0; i < RTWN_PCI_TX_LIST_COUNT; i++) {
		struct rtwn_tx_data *data = &ring->tx_data[i];
		void *desc = (uint8_t *)ring->desc + sc->txdesc_len * i;

		FUNC5(pc, desc, NULL);

		if (data->m != NULL) {
			FUNC1(ring->data_dmat, data->map,
			    BUS_DMASYNC_POSTWRITE);
			FUNC2(ring->data_dmat, data->map);
			FUNC4(data->m);
			data->m = NULL;
		}
		if (data->ni != NULL) {
			FUNC3(data->ni);
			data->ni = NULL;
		}
	}

	FUNC1(ring->desc_dmat, ring->desc_map,
	    BUS_DMASYNC_POSTWRITE);

	sc->qfullmsk &= ~(1 << qid);
	ring->queued = 0;
	ring->last = ring->cur = 0;
}