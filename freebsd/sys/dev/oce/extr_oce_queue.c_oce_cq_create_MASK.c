#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  void* uint32_t ;
struct oce_eq {int dummy; } ;
struct TYPE_6__ {scalar_t__ nodelay; void* item_size; void* q_len; } ;
struct oce_cq {TYPE_1__ cq_cfg; struct oce_eq* eq; TYPE_2__* parent; int /*<<< orphan*/  ring; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  ncqs; struct oce_cq** cq; } ;
typedef  TYPE_2__* POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct oce_cq* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct oce_cq*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,void*,void*) ; 
 int FUNC4 (struct oce_cq*,void*,void*) ; 

struct oce_cq *
FUNC5(POCE_SOFTC sc, struct oce_eq *eq,
			     uint32_t q_len,
			     uint32_t item_size,
			     uint32_t sol_event,
			     uint32_t is_eventable,
			     uint32_t nodelay, uint32_t ncoalesce)
{
	struct oce_cq *cq = NULL;
	int rc = 0;

	cq = FUNC1(sizeof(struct oce_cq), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (!cq)
		return NULL;

	cq->ring = FUNC3(sc, q_len, item_size);
	if (!cq->ring)
		goto error;
	
	cq->parent = sc;
	cq->eq = eq;
	cq->cq_cfg.q_len = q_len;
	cq->cq_cfg.item_size = item_size;
	cq->cq_cfg.nodelay = (uint8_t) nodelay;

	rc = FUNC4(cq, ncoalesce, is_eventable);
	if (rc)
		goto error;

	sc->cq[sc->ncqs++] = cq;

	return cq;

error:
	FUNC0(sc->dev, "CQ create failed\n");
	FUNC2(sc, cq);
	return NULL;
}