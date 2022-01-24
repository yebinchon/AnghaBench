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
struct ib_device {struct ib_cq* (* create_cq ) (struct ib_device*,struct ib_cq_init_attr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct ib_cq_init_attr {int cqe; int comp_vector; } ;
struct ib_cq {int poll_ctx; int /*<<< orphan*/  work; int /*<<< orphan*/ * comp_handler; int /*<<< orphan*/  usecnt; void* cq_context; int /*<<< orphan*/ * event_handler; int /*<<< orphan*/ * uobject; struct ib_device* device; } ;
typedef  enum ib_poll_context { ____Placeholder_ib_poll_context } ib_poll_context ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct ib_cq* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
#define  IB_POLL_DIRECT 130 
#define  IB_POLL_SOFTIRQ 129 
#define  IB_POLL_WORKQUEUE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ib_cq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ib_cq_completion_workqueue ; 
 int /*<<< orphan*/  ib_cq_poll_work ; 
 int /*<<< orphan*/  FUNC4 (struct ib_cq*,int /*<<< orphan*/ ) ; 
 struct ib_cq* FUNC5 (struct ib_device*,struct ib_cq_init_attr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct ib_cq *
FUNC6(struct ib_device *dev, void *private,
    int nr_cqe, int comp_vector, enum ib_poll_context poll_ctx)
{
	struct ib_cq_init_attr cq_attr = {
		.cqe = nr_cqe,
		.comp_vector = comp_vector,
	};
	struct ib_cq *cq;

	/*
	 * Check for invalid parameters early on to avoid
	 * extra error handling code:
	 */
	switch (poll_ctx) {
	case IB_POLL_DIRECT:
	case IB_POLL_SOFTIRQ:
	case IB_POLL_WORKQUEUE:
		break;
	default:
		return (FUNC0(-EINVAL));
	}

	cq = dev->create_cq(dev, &cq_attr, NULL, NULL);
	if (FUNC2(cq))
		return (cq);

	cq->device = dev;
	cq->uobject = NULL;
	cq->event_handler = NULL;
	cq->cq_context = private;
	cq->poll_ctx = poll_ctx;
	FUNC3(&cq->usecnt, 0);

	switch (poll_ctx) {
	case IB_POLL_DIRECT:
		cq->comp_handler = NULL;	/* no hardware completions */
		break;
	case IB_POLL_SOFTIRQ:
	case IB_POLL_WORKQUEUE:
		cq->comp_handler = ib_cq_completion_workqueue;
		FUNC1(&cq->work, ib_cq_poll_work);
		FUNC4(cq, IB_CQ_NEXT_COMP);
		break;
	default:
		break;
	}
	return (cq);
}