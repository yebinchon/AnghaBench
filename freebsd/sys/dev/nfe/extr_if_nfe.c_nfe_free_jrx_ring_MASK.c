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
struct nfe_rx_data {int /*<<< orphan*/ * m; int /*<<< orphan*/ * rx_data_map; } ;
struct nfe_jrx_ring {int /*<<< orphan*/ * jrx_desc_tag; int /*<<< orphan*/ * jdesc32; int /*<<< orphan*/ * jdesc64; int /*<<< orphan*/  jrx_desc_map; int /*<<< orphan*/ * jrx_data_tag; int /*<<< orphan*/ * jrx_spare_map; struct nfe_rx_data* jdata; } ;
struct nfe_desc64 {int dummy; } ;
struct nfe_desc32 {int dummy; } ;

/* Variables and functions */
 int NFE_40BIT_ADDR ; 
 int NFE_JUMBO_RX_RING_COUNT ; 
 int NFE_JUMBO_SUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct nfe_softc *sc, struct nfe_jrx_ring *ring)
{
	struct nfe_rx_data *data;
	void *desc;
	int i, descsize;

	if ((sc->nfe_flags & NFE_JUMBO_SUP) == 0)
		return;

	if (sc->nfe_flags & NFE_40BIT_ADDR) {
		desc = ring->jdesc64;
		descsize = sizeof (struct nfe_desc64);
	} else {
		desc = ring->jdesc32;
		descsize = sizeof (struct nfe_desc32);
	}

	for (i = 0; i < NFE_JUMBO_RX_RING_COUNT; i++) {
		data = &ring->jdata[i];
		if (data->rx_data_map != NULL) {
			FUNC1(ring->jrx_data_tag,
			    data->rx_data_map);
			data->rx_data_map = NULL;
		}
		if (data->m != NULL) {
			FUNC4(data->m);
			data->m = NULL;
		}
	}
	if (ring->jrx_data_tag != NULL) {
		if (ring->jrx_spare_map != NULL) {
			FUNC1(ring->jrx_data_tag,
			    ring->jrx_spare_map);
			ring->jrx_spare_map = NULL;
		}
		FUNC0(ring->jrx_data_tag);
		ring->jrx_data_tag = NULL;
	}

	if (desc != NULL) {
		FUNC2(ring->jrx_desc_tag, ring->jrx_desc_map);
		FUNC3(ring->jrx_desc_tag, desc, ring->jrx_desc_map);
		ring->jdesc64 = NULL;
		ring->jdesc32 = NULL;
	}

	if (ring->jrx_desc_tag != NULL) {
		FUNC0(ring->jrx_desc_tag);
		ring->jrx_desc_tag = NULL;
	}
}