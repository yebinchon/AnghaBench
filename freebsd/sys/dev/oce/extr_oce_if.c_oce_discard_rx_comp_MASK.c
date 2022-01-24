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
typedef  int uint32_t ;
struct oce_rq {int /*<<< orphan*/  pending; TYPE_2__* ring; int /*<<< orphan*/  tag; struct oce_packet_desc* pckts; int /*<<< orphan*/  parent; } ;
struct oce_packet_desc {int /*<<< orphan*/ * mbuf; int /*<<< orphan*/  map; } ;
struct TYPE_4__ {size_t cidx; size_t pidx; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__* POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct oce_rq *rq, int num_frags)
{
	uint32_t i = 0;
	struct oce_packet_desc *pd;
	POCE_SOFTC sc = (POCE_SOFTC) rq->parent;

	for (i = 0; i < num_frags; i++) {
                if (rq->ring->cidx == rq->ring->pidx) {
                        FUNC3(sc->dev,
                                "oce_discard_rx_comp: Invalid RX completion - Queue is empty\n");
                        return;
                }
                pd = &rq->pckts[rq->ring->cidx];
                FUNC1(rq->tag, pd->map, BUS_DMASYNC_POSTWRITE);
                FUNC2(rq->tag, pd->map);
                if (pd->mbuf != NULL) {
                        FUNC4(pd->mbuf);
                        pd->mbuf = NULL;
                }

		FUNC0(rq->ring, 1);
                rq->pending--;
	}
}