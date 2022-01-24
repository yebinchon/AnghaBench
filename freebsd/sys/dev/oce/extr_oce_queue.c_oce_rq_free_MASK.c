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
struct oce_rq {int /*<<< orphan*/  rx_lock; int /*<<< orphan*/ * tag; TYPE_1__* pckts; int /*<<< orphan*/ * ring; int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {int /*<<< orphan*/ * mbuf; int /*<<< orphan*/ * map; } ;
typedef  int /*<<< orphan*/  POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int OCE_RQ_PACKET_ARRAY_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct oce_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct oce_rq *rq)
{
	POCE_SOFTC sc = (POCE_SOFTC) rq->parent;
	int i = 0 ;

	if (rq->ring != NULL) {
		FUNC6(sc, rq->ring);
		rq->ring = NULL;
	}
	for (i = 0; i < OCE_RQ_PACKET_ARRAY_SIZE; i++) {
		if (rq->pckts[i].map != NULL) {
			FUNC3(rq->tag, rq->pckts[i].map);
			FUNC2(rq->tag, rq->pckts[i].map);
			rq->pckts[i].map = NULL;
		}
		if (rq->pckts[i].mbuf) {
			FUNC5(rq->pckts[i].mbuf);
			rq->pckts[i].mbuf = NULL;
		}
	}

	if (rq->tag != NULL)
		FUNC1(rq->tag);

	FUNC0(&rq->rx_lock);
	FUNC4(rq, M_DEVBUF);
}