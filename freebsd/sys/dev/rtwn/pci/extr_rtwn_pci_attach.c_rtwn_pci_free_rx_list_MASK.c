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
struct rtwn_softc {int dummy; } ;
struct rtwn_rx_ring {int /*<<< orphan*/ * data_dmat; struct rtwn_rx_data* rx_data; int /*<<< orphan*/ * desc_dmat; int /*<<< orphan*/ * desc; int /*<<< orphan*/ * desc_map; } ;
struct rtwn_rx_data {int /*<<< orphan*/ * map; int /*<<< orphan*/ * m; } ;
struct rtwn_pci_softc {struct rtwn_rx_ring rx_ring; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int RTWN_PCI_RX_LIST_COUNT ; 
 struct rtwn_pci_softc* FUNC0 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct rtwn_softc *sc)
{
	struct rtwn_pci_softc *pc = FUNC0(sc);
	struct rtwn_rx_ring *rx_ring = &pc->rx_ring;
	struct rtwn_rx_data *rx_data;
	int i;

	if (rx_ring->desc_dmat != NULL) {
		if (rx_ring->desc != NULL) {
			FUNC3(rx_ring->desc_dmat,
			    rx_ring->desc_map,
			    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
			FUNC4(rx_ring->desc_dmat,
			    rx_ring->desc_map);
			FUNC5(rx_ring->desc_dmat, rx_ring->desc,
			    rx_ring->desc_map);
			rx_ring->desc = NULL;
		}
		FUNC1(rx_ring->desc_dmat);
		rx_ring->desc_dmat = NULL;
	}

	for (i = 0; i < RTWN_PCI_RX_LIST_COUNT; i++) {
		rx_data = &rx_ring->rx_data[i];

		if (rx_data->m != NULL) {
			FUNC3(rx_ring->data_dmat,
			    rx_data->map, BUS_DMASYNC_POSTREAD);
			FUNC4(rx_ring->data_dmat, rx_data->map);
			FUNC6(rx_data->m);
			rx_data->m = NULL;
		}
		FUNC2(rx_ring->data_dmat, rx_data->map);
		rx_data->map = NULL;
	}
	if (rx_ring->data_dmat != NULL) {
		FUNC1(rx_ring->data_dmat);
		rx_ring->data_dmat = NULL;
	}
}