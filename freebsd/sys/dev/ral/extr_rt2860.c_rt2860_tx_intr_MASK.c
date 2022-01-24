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
typedef  size_t uint32_t ;
struct rt2860_tx_ring {size_t next; int queued; struct rt2860_tx_data** data; } ;
struct rt2860_tx_data {int /*<<< orphan*/ * m; int /*<<< orphan*/ * ni; int /*<<< orphan*/  map; } ;
struct rt2860_softc {int qfullmsk; scalar_t__ sc_tx_timer; int /*<<< orphan*/  data_pool; int /*<<< orphan*/  txwi_dmat; struct rt2860_tx_ring* txq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 size_t FUNC0 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int RT2860_TX_RING_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct rt2860_tx_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC6 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2860_softc*) ; 

__attribute__((used)) static void
FUNC8(struct rt2860_softc *sc, int qid)
{
	struct rt2860_tx_ring *ring = &sc->txq[qid];
	uint32_t hw;

	FUNC6(sc);

	hw = FUNC0(sc, FUNC1(qid));
	while (ring->next != hw) {
		struct rt2860_tx_data *data = ring->data[ring->next];

		if (data != NULL) {
			FUNC3(sc->txwi_dmat, data->map,
			    BUS_DMASYNC_POSTWRITE);
			FUNC4(sc->txwi_dmat, data->map);
			FUNC5(data->ni, data->m, 0);
			data->ni = NULL;
			data->m = NULL;
			FUNC2(&sc->data_pool, data, next);
			ring->data[ring->next] = NULL;
		}
		ring->queued--;
		ring->next = (ring->next + 1) % RT2860_TX_RING_COUNT;
	}

	sc->sc_tx_timer = 0;
	if (ring->queued < RT2860_TX_RING_COUNT)
		sc->qfullmsk &= ~(1 << qid);
	FUNC7(sc);
}