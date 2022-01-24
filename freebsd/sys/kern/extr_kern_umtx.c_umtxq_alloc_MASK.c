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
struct umtxq_queue {int dummy; } ;
struct umtx_q {int /*<<< orphan*/  uq_inherited_pri; int /*<<< orphan*/  uq_pi_contested; TYPE_1__* uq_spare_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_UMTX ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PRI_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ,int) ; 

struct umtx_q *
FUNC2(void)
{
	struct umtx_q *uq;

	uq = FUNC1(sizeof(struct umtx_q), M_UMTX, M_WAITOK | M_ZERO);
	uq->uq_spare_queue = FUNC1(sizeof(struct umtxq_queue), M_UMTX,
	    M_WAITOK | M_ZERO);
	FUNC0(&uq->uq_spare_queue->head);
	FUNC0(&uq->uq_pi_contested);
	uq->uq_inherited_pri = PRI_MAX;
	return (uq);
}