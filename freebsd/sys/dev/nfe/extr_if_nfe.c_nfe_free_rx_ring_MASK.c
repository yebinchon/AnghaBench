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
struct nfe_softc {int nfe_flags; } ;
struct nfe_rx_ring {int /*<<< orphan*/ * rx_desc_tag; int /*<<< orphan*/ * desc32; int /*<<< orphan*/ * desc64; int /*<<< orphan*/  rx_desc_map; int /*<<< orphan*/ * rx_data_tag; int /*<<< orphan*/ * rx_spare_map; struct nfe_rx_data* data; } ;
struct nfe_rx_data {int /*<<< orphan*/ * m; int /*<<< orphan*/ * rx_data_map; } ;

/* Variables and functions */
 int NFE_40BIT_ADDR ; 
 int NFE_RX_RING_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct nfe_softc *sc, struct nfe_rx_ring *ring)
{
	struct nfe_rx_data *data;
	void *desc;
	int i;

	if (sc->nfe_flags & NFE_40BIT_ADDR)
		desc = ring->desc64;
	else
		desc = ring->desc32;

	for (i = 0; i < NFE_RX_RING_COUNT; i++) {
		data = &ring->data[i];
		if (data->rx_data_map != NULL) {
			FUNC1(ring->rx_data_tag,
			    data->rx_data_map);
			data->rx_data_map = NULL;
		}
		if (data->m != NULL) {
			FUNC4(data->m);
			data->m = NULL;
		}
	}
	if (ring->rx_data_tag != NULL) {
		if (ring->rx_spare_map != NULL) {
			FUNC1(ring->rx_data_tag,
			    ring->rx_spare_map);
			ring->rx_spare_map = NULL;
		}
		FUNC0(ring->rx_data_tag);
		ring->rx_data_tag = NULL;
	}

	if (desc != NULL) {
		FUNC2(ring->rx_desc_tag, ring->rx_desc_map);
		FUNC3(ring->rx_desc_tag, desc, ring->rx_desc_map);
		ring->desc64 = NULL;
		ring->desc32 = NULL;
	}
	if (ring->rx_desc_tag != NULL) {
		FUNC0(ring->rx_desc_tag);
		ring->rx_desc_tag = NULL;
	}
}