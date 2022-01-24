#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iwm_softc {TYPE_1__* cfg; } ;
struct iwm_rx_ring {int /*<<< orphan*/ * data_dmat; int /*<<< orphan*/ * spare_map; struct iwm_rx_data* data; int /*<<< orphan*/  used_desc_dma; int /*<<< orphan*/  stat_dma; int /*<<< orphan*/  free_desc_dma; } ;
struct iwm_rx_data {int /*<<< orphan*/ * map; int /*<<< orphan*/ * m; } ;
struct TYPE_2__ {scalar_t__ mqrx_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int IWM_RX_LEGACY_RING_COUNT ; 
 int IWM_RX_MQ_RING_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct iwm_softc *sc, struct iwm_rx_ring *ring)
{
	int count, i;

	FUNC4(&ring->free_desc_dma);
	FUNC4(&ring->stat_dma);
	FUNC4(&ring->used_desc_dma);

	count = sc->cfg->mqrx_supported ? IWM_RX_MQ_RING_COUNT :
	    IWM_RX_LEGACY_RING_COUNT;

	for (i = 0; i < count; i++) {
		struct iwm_rx_data *data = &ring->data[i];

		if (data->m != NULL) {
			FUNC2(ring->data_dmat, data->map,
			    BUS_DMASYNC_POSTREAD);
			FUNC3(ring->data_dmat, data->map);
			FUNC5(data->m);
			data->m = NULL;
		}
		if (data->map != NULL) {
			FUNC1(ring->data_dmat, data->map);
			data->map = NULL;
		}
	}
	if (ring->spare_map != NULL) {
		FUNC1(ring->data_dmat, ring->spare_map);
		ring->spare_map = NULL;
	}
	if (ring->data_dmat != NULL) {
		FUNC0(ring->data_dmat);
		ring->data_dmat = NULL;
	}
}