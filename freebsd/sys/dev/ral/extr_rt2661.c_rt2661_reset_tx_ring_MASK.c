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
struct rt2661_tx_ring {int count; scalar_t__ stat; scalar_t__ next; scalar_t__ cur; scalar_t__ queued; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_dmat; int /*<<< orphan*/  data_dmat; struct rt2661_tx_data* data; struct rt2661_tx_desc* desc; } ;
struct rt2661_tx_desc {scalar_t__ flags; } ;
struct rt2661_tx_data {int /*<<< orphan*/ * ni; int /*<<< orphan*/ * m; int /*<<< orphan*/  map; } ;
struct rt2661_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct rt2661_softc *sc, struct rt2661_tx_ring *ring)
{
	struct rt2661_tx_desc *desc;
	struct rt2661_tx_data *data;
	int i;

	for (i = 0; i < ring->count; i++) {
		desc = &ring->desc[i];
		data = &ring->data[i];

		if (data->m != NULL) {
			FUNC0(ring->data_dmat, data->map,
			    BUS_DMASYNC_POSTWRITE);
			FUNC1(ring->data_dmat, data->map);
			FUNC3(data->m);
			data->m = NULL;
		}

		if (data->ni != NULL) {
			FUNC2(data->ni);
			data->ni = NULL;
		}

		desc->flags = 0;
	}

	FUNC0(ring->desc_dmat, ring->desc_map, BUS_DMASYNC_PREWRITE);

	ring->queued = 0;
	ring->cur = ring->next = ring->stat = 0;
}