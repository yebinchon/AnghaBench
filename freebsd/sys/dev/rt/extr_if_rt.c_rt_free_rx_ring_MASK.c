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
struct rt_softc_rx_ring {int /*<<< orphan*/ * data_dma_tag; int /*<<< orphan*/ * spare_dma_map; struct rt_softc_rx_data* data; int /*<<< orphan*/ * desc_dma_tag; int /*<<< orphan*/ * desc_dma_map; int /*<<< orphan*/ * desc; } ;
struct rt_softc_rx_data {int /*<<< orphan*/ * dma_map; int /*<<< orphan*/ * m; } ;
struct rt_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int RT_SOFTC_RX_RING_DATA_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct rt_softc *sc, struct rt_softc_rx_ring *ring)
{
	struct rt_softc_rx_data *data;
	int i;

	if (ring->desc != NULL) {
		FUNC2(ring->desc_dma_tag, ring->desc_dma_map,
			BUS_DMASYNC_POSTWRITE);
		FUNC3(ring->desc_dma_tag, ring->desc_dma_map);
		FUNC4(ring->desc_dma_tag, ring->desc,
			ring->desc_dma_map);
	}

	if (ring->desc_dma_tag != NULL)
		FUNC0(ring->desc_dma_tag);

	for (i = 0; i < RT_SOFTC_RX_RING_DATA_COUNT; i++) {
		data = &ring->data[i];

		if (data->m != NULL) {
			FUNC2(ring->data_dma_tag, data->dma_map,
				BUS_DMASYNC_POSTREAD);
			FUNC3(ring->data_dma_tag, data->dma_map);
			FUNC5(data->m);
		}

		if (data->dma_map != NULL)
			FUNC1(ring->data_dma_tag, data->dma_map);
	}

	if (ring->spare_dma_map != NULL)
		FUNC1(ring->data_dma_tag, ring->spare_dma_map);

	if (ring->data_dma_tag != NULL)
		FUNC0(ring->data_dma_tag);
}