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
struct rt2860_tx_ring {scalar_t__ next; scalar_t__ cur; scalar_t__ queued; struct rt2860_tx_data** data; } ;
struct rt2860_tx_data {int /*<<< orphan*/ * ni; int /*<<< orphan*/ * m; int /*<<< orphan*/  map; } ;
struct rt2860_softc {int /*<<< orphan*/  data_pool; int /*<<< orphan*/  txwi_dmat; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int RT2860_TX_RING_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct rt2860_tx_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  next ; 

void
FUNC5(struct rt2860_softc *sc, struct rt2860_tx_ring *ring)
{
	struct rt2860_tx_data *data;
	int i;

	for (i = 0; i < RT2860_TX_RING_COUNT; i++) {
		if ((data = ring->data[i]) == NULL)
			continue;	/* nothing mapped in this slot */

		if (data->m != NULL) {
			FUNC1(sc->txwi_dmat, data->map,
			    BUS_DMASYNC_POSTWRITE);
			FUNC2(sc->txwi_dmat, data->map);
			FUNC4(data->m);
			data->m = NULL;
		}
		if (data->ni != NULL) {
			FUNC3(data->ni);
			data->ni = NULL;
		}

		FUNC0(&sc->data_pool, data, next);
		ring->data[i] = NULL;
	}

	ring->queued = 0;
	ring->cur = ring->next = 0;
}