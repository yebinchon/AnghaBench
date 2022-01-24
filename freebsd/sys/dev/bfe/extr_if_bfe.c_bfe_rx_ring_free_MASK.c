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
struct bfe_softc {int /*<<< orphan*/  bfe_rx_map; int /*<<< orphan*/  bfe_rx_tag; int /*<<< orphan*/  bfe_rx_list; TYPE_1__* bfe_rx_ring; int /*<<< orphan*/  bfe_rxmbuf_tag; } ;
struct TYPE_2__ {int /*<<< orphan*/ * bfe_mbuf; int /*<<< orphan*/  bfe_map; } ;

/* Variables and functions */
 int BFE_RX_LIST_CNT ; 
 int /*<<< orphan*/  BFE_RX_LIST_SIZE ; 
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct bfe_softc *sc)
{
	int i;

	for (i = 0; i < BFE_RX_LIST_CNT; i++) {
		if (sc->bfe_rx_ring[i].bfe_mbuf != NULL) {
			FUNC0(sc->bfe_rxmbuf_tag,
			    sc->bfe_rx_ring[i].bfe_map, BUS_DMASYNC_POSTREAD);
			FUNC1(sc->bfe_rxmbuf_tag,
			    sc->bfe_rx_ring[i].bfe_map);
			FUNC3(sc->bfe_rx_ring[i].bfe_mbuf);
			sc->bfe_rx_ring[i].bfe_mbuf = NULL;
		}
	}
	FUNC2(sc->bfe_rx_list, BFE_RX_LIST_SIZE);
	FUNC0(sc->bfe_rx_tag, sc->bfe_rx_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}