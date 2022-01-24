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
struct nfe_tx_ring {int /*<<< orphan*/ * tx_desc_tag; int /*<<< orphan*/ * desc32; int /*<<< orphan*/ * desc64; int /*<<< orphan*/ * tx_desc_map; int /*<<< orphan*/ * tx_data_tag; struct nfe_tx_data* data; } ;
struct nfe_tx_data {int /*<<< orphan*/ * tx_data_map; int /*<<< orphan*/ * m; } ;
struct nfe_softc {int nfe_flags; } ;
struct nfe_desc64 {int dummy; } ;
struct nfe_desc32 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int NFE_40BIT_ADDR ; 
 int NFE_TX_RING_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct nfe_softc *sc, struct nfe_tx_ring *ring)
{
	struct nfe_tx_data *data;
	void *desc;
	int i, descsize;

	if (sc->nfe_flags & NFE_40BIT_ADDR) {
		desc = ring->desc64;
		descsize = sizeof (struct nfe_desc64);
	} else {
		desc = ring->desc32;
		descsize = sizeof (struct nfe_desc32);
	}

	for (i = 0; i < NFE_TX_RING_COUNT; i++) {
		data = &ring->data[i];

		if (data->m != NULL) {
			FUNC2(ring->tx_data_tag, data->tx_data_map,
			    BUS_DMASYNC_POSTWRITE);
			FUNC3(ring->tx_data_tag, data->tx_data_map);
			FUNC5(data->m);
			data->m = NULL;
		}
		if (data->tx_data_map != NULL) {
			FUNC1(ring->tx_data_tag,
			    data->tx_data_map);
			data->tx_data_map = NULL;
		}
	}

	if (ring->tx_data_tag != NULL) {
		FUNC0(ring->tx_data_tag);
		ring->tx_data_tag = NULL;
	}

	if (desc != NULL) {
		FUNC2(ring->tx_desc_tag, ring->tx_desc_map,
		    BUS_DMASYNC_POSTWRITE);
		FUNC3(ring->tx_desc_tag, ring->tx_desc_map);
		FUNC4(ring->tx_desc_tag, desc, ring->tx_desc_map);
		ring->desc64 = NULL;
		ring->desc32 = NULL;
		FUNC0(ring->tx_desc_tag);
		ring->tx_desc_tag = NULL;
	}
}