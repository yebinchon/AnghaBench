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
struct iwm_tx_ring {int /*<<< orphan*/ * data_dmat; struct iwm_tx_data* data; int /*<<< orphan*/  cmd_dma; int /*<<< orphan*/  desc_dma; } ;
struct iwm_tx_data {int /*<<< orphan*/ * map; int /*<<< orphan*/ * m; } ;
struct iwm_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int IWM_TX_RING_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct iwm_softc *sc, struct iwm_tx_ring *ring)
{
	int i;

	FUNC4(&ring->desc_dma);
	FUNC4(&ring->cmd_dma);

	for (i = 0; i < IWM_TX_RING_COUNT; i++) {
		struct iwm_tx_data *data = &ring->data[i];

		if (data->m != NULL) {
			FUNC2(ring->data_dmat, data->map,
			    BUS_DMASYNC_POSTWRITE);
			FUNC3(ring->data_dmat, data->map);
			FUNC5(data->m);
			data->m = NULL;
		}
		if (data->map != NULL) {
			FUNC1(ring->data_dmat, data->map);
			data->map = NULL;
		}
	}
	if (ring->data_dmat != NULL) {
		FUNC0(ring->data_dmat);
		ring->data_dmat = NULL;
	}
}