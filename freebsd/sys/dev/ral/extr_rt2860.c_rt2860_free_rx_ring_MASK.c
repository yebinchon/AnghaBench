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
struct rt2860_softc {int dummy; } ;
struct rt2860_rx_ring {int /*<<< orphan*/ * data_dmat; struct rt2860_rx_data* data; int /*<<< orphan*/ * desc_dmat; int /*<<< orphan*/ * desc_map; int /*<<< orphan*/ * rxd; } ;
struct rt2860_rx_data {int /*<<< orphan*/ * map; int /*<<< orphan*/ * m; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int RT2860_RX_RING_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct rt2860_softc *sc, struct rt2860_rx_ring *ring)
{
	int i;

	if (ring->rxd != NULL) {
		FUNC2(ring->desc_dmat, ring->desc_map,
		    BUS_DMASYNC_POSTWRITE);
		FUNC3(ring->desc_dmat, ring->desc_map);
		FUNC4(ring->desc_dmat, ring->rxd, ring->desc_map);
	}
	if (ring->desc_dmat != NULL)
		FUNC0(ring->desc_dmat);

	for (i = 0; i < RT2860_RX_RING_COUNT; i++) {
		struct rt2860_rx_data *data = &ring->data[i];

		if (data->m != NULL) {
			FUNC2(ring->data_dmat, data->map,
			    BUS_DMASYNC_POSTREAD);
			FUNC3(ring->data_dmat, data->map);
			FUNC5(data->m);
		}
		if (data->map != NULL)
			FUNC1(ring->data_dmat, data->map);
	}
	if (ring->data_dmat != NULL)
		FUNC0(ring->data_dmat);
}