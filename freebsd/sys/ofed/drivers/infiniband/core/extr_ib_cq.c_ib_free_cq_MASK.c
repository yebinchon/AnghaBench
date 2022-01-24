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
struct ib_cq {int poll_ctx; TYPE_1__* device; int /*<<< orphan*/  work; int /*<<< orphan*/  usecnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destroy_cq ) (struct ib_cq*) ;} ;

/* Variables and functions */
#define  IB_POLL_DIRECT 130 
#define  IB_POLL_SOFTIRQ 129 
#define  IB_POLL_WORKQUEUE 128 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_cq*) ; 

void
FUNC4(struct ib_cq *cq)
{

	if (FUNC0(FUNC1(&cq->usecnt) != 0))
		return;

	switch (cq->poll_ctx) {
	case IB_POLL_DIRECT:
		break;
	case IB_POLL_SOFTIRQ:
	case IB_POLL_WORKQUEUE:
		FUNC2(&cq->work);
		break;
	default:
		break;
	}

	(void)cq->device->destroy_cq(cq);
}