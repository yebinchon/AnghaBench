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
struct oce_rq {scalar_t__ pending; TYPE_1__* ring; int /*<<< orphan*/  tag; struct oce_packet_desc* pckts; } ;
struct oce_packet_desc {int /*<<< orphan*/ * mbuf; int /*<<< orphan*/  map; } ;
struct TYPE_2__ {size_t cidx; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct oce_rq *rq)
{
	struct oce_packet_desc *pd;
	
	while (rq->pending) {

		pd = &rq->pckts[rq->ring->cidx];
		FUNC1(rq->tag, pd->map, BUS_DMASYNC_POSTWRITE);
		FUNC2(rq->tag, pd->map);
		if (pd->mbuf != NULL) {
			FUNC3(pd->mbuf);
			pd->mbuf = NULL;
		}

		FUNC0(rq->ring,1);
                rq->pending--;
	}

}