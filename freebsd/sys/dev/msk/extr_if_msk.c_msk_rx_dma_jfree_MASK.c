#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct msk_rxdesc {int /*<<< orphan*/ * rx_dmamap; } ;
struct TYPE_4__ {int /*<<< orphan*/ * msk_jumbo_rx_tag; int /*<<< orphan*/ * msk_jumbo_rx_sparemap; struct msk_rxdesc* msk_jumbo_rxdesc; int /*<<< orphan*/ * msk_jumbo_rx_ring_tag; int /*<<< orphan*/  msk_jumbo_rx_ring_map; } ;
struct TYPE_3__ {scalar_t__ msk_jumbo_rx_ring_paddr; int /*<<< orphan*/ * msk_jumbo_rx_ring; } ;
struct msk_if_softc {TYPE_2__ msk_cdata; TYPE_1__ msk_rdata; } ;

/* Variables and functions */
 int MSK_JUMBO_RX_RING_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct msk_if_softc *sc_if)
{
	struct msk_rxdesc *jrxd;
	int i;

	/* Jumbo Rx ring. */
	if (sc_if->msk_cdata.msk_jumbo_rx_ring_tag) {
		if (sc_if->msk_rdata.msk_jumbo_rx_ring_paddr)
			FUNC2(sc_if->msk_cdata.msk_jumbo_rx_ring_tag,
			    sc_if->msk_cdata.msk_jumbo_rx_ring_map);
		if (sc_if->msk_rdata.msk_jumbo_rx_ring)
			FUNC3(sc_if->msk_cdata.msk_jumbo_rx_ring_tag,
			    sc_if->msk_rdata.msk_jumbo_rx_ring,
			    sc_if->msk_cdata.msk_jumbo_rx_ring_map);
		sc_if->msk_rdata.msk_jumbo_rx_ring = NULL;
		sc_if->msk_rdata.msk_jumbo_rx_ring_paddr = 0;
		FUNC0(sc_if->msk_cdata.msk_jumbo_rx_ring_tag);
		sc_if->msk_cdata.msk_jumbo_rx_ring_tag = NULL;
	}
	/* Jumbo Rx buffers. */
	if (sc_if->msk_cdata.msk_jumbo_rx_tag) {
		for (i = 0; i < MSK_JUMBO_RX_RING_CNT; i++) {
			jrxd = &sc_if->msk_cdata.msk_jumbo_rxdesc[i];
			if (jrxd->rx_dmamap) {
				FUNC1(
				    sc_if->msk_cdata.msk_jumbo_rx_tag,
				    jrxd->rx_dmamap);
				jrxd->rx_dmamap = NULL;
			}
		}
		if (sc_if->msk_cdata.msk_jumbo_rx_sparemap) {
			FUNC1(sc_if->msk_cdata.msk_jumbo_rx_tag,
			    sc_if->msk_cdata.msk_jumbo_rx_sparemap);
			sc_if->msk_cdata.msk_jumbo_rx_sparemap = 0;
		}
		FUNC0(sc_if->msk_cdata.msk_jumbo_rx_tag);
		sc_if->msk_cdata.msk_jumbo_rx_tag = NULL;
	}
}