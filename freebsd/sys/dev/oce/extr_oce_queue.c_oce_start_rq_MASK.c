#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int q_len; } ;
struct oce_rq {TYPE_2__* cq; int /*<<< orphan*/  parent; TYPE_1__ cfg; } ;
struct TYPE_6__ {scalar_t__ enable_hwlro; } ;
struct TYPE_5__ {int /*<<< orphan*/  cq_id; } ;
typedef  TYPE_3__* POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (struct oce_rq*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(struct oce_rq *rq)
{
	POCE_SOFTC sc = (POCE_SOFTC) rq->parent;
	int rc;

	if(sc->enable_hwlro)
		rc = FUNC0(rq, 960);
	else
		rc = FUNC0(rq, rq->cfg.q_len - 1);

	if (rc == 0)
		FUNC1(rq->parent, rq->cq->cq_id, 0, TRUE);

	return rc;
}