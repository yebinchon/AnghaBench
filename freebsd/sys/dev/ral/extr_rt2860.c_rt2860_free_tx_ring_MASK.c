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
struct rt2860_tx_ring {struct rt2860_tx_data** data; int /*<<< orphan*/ * desc_dmat; int /*<<< orphan*/  desc_map; int /*<<< orphan*/ * txd; } ;
struct rt2860_tx_data {int /*<<< orphan*/ * ni; int /*<<< orphan*/ * m; int /*<<< orphan*/  map; } ;
struct rt2860_softc {int /*<<< orphan*/  data_pool; int /*<<< orphan*/ * txwi_dmat; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int RT2860_TX_RING_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct rt2860_tx_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  next ; 

void
FUNC7(struct rt2860_softc *sc, struct rt2860_tx_ring *ring)
{
	struct rt2860_tx_data *data;
	int i;

	if (ring->txd != NULL) {
		FUNC2(ring->desc_dmat, ring->desc_map,
		    BUS_DMASYNC_POSTWRITE);
		FUNC3(ring->desc_dmat, ring->desc_map);
		FUNC4(ring->desc_dmat, ring->txd, ring->desc_map);
	}
	if (ring->desc_dmat != NULL)
		FUNC1(ring->desc_dmat);

	for (i = 0; i < RT2860_TX_RING_COUNT; i++) {
		if ((data = ring->data[i]) == NULL)
			continue;	/* nothing mapped in this slot */

		if (data->m != NULL) {
			FUNC2(sc->txwi_dmat, data->map,
			    BUS_DMASYNC_POSTWRITE);
			FUNC3(sc->txwi_dmat, data->map);
			FUNC6(data->m);
		}
		if (data->ni != NULL)
			FUNC5(data->ni);

		FUNC0(&sc->data_pool, data, next);
	}
}