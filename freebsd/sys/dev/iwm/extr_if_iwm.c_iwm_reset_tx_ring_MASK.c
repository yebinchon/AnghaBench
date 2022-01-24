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
struct TYPE_2__ {int /*<<< orphan*/  map; int /*<<< orphan*/  tag; int /*<<< orphan*/  size; } ;
struct iwm_tx_ring {int qid; scalar_t__ cur; scalar_t__ queued; TYPE_1__ desc_dma; int /*<<< orphan*/  desc; int /*<<< orphan*/  data_dmat; struct iwm_tx_data* data; } ;
struct iwm_tx_data {int /*<<< orphan*/ * m; int /*<<< orphan*/  map; } ;
struct iwm_softc {int qfullmsk; scalar_t__ cmd_hold_nic_awake; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int IWM_MVM_CMD_QUEUE ; 
 int IWM_TX_RING_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct iwm_softc *sc, struct iwm_tx_ring *ring)
{
	int i;

	for (i = 0; i < IWM_TX_RING_COUNT; i++) {
		struct iwm_tx_data *data = &ring->data[i];

		if (data->m != NULL) {
			FUNC0(ring->data_dmat, data->map,
			    BUS_DMASYNC_POSTWRITE);
			FUNC1(ring->data_dmat, data->map);
			FUNC3(data->m);
			data->m = NULL;
		}
	}
	/* Clear TX descriptors. */
	FUNC4(ring->desc, 0, ring->desc_dma.size);
	FUNC0(ring->desc_dma.tag, ring->desc_dma.map,
	    BUS_DMASYNC_PREWRITE);
	sc->qfullmsk &= ~(1 << ring->qid);
	ring->queued = 0;
	ring->cur = 0;

	if (ring->qid == IWM_MVM_CMD_QUEUE && sc->cmd_hold_nic_awake)
		FUNC2(sc);
}