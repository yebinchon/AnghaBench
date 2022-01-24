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
struct ib_qp {void (* event_handler ) (struct ib_event*,void*) ;TYPE_1__* device; int /*<<< orphan*/  open_list; int /*<<< orphan*/  qp_type; int /*<<< orphan*/  qp_num; void* qp_context; int /*<<< orphan*/  usecnt; struct ib_qp* real_qp; } ;
struct TYPE_2__ {int /*<<< orphan*/  event_handler_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct ib_qp* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ib_qp* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct ib_qp *FUNC6(struct ib_qp *real_qp,
				  void (*event_handler)(struct ib_event *, void *),
				  void *qp_context)
{
	struct ib_qp *qp;
	unsigned long flags;

	qp = FUNC2(sizeof *qp, GFP_KERNEL);
	if (!qp)
		return FUNC0(-ENOMEM);

	qp->real_qp = real_qp;
	FUNC1(&real_qp->usecnt);
	qp->device = real_qp->device;
	qp->event_handler = event_handler;
	qp->qp_context = qp_context;
	qp->qp_num = real_qp->qp_num;
	qp->qp_type = real_qp->qp_type;

	FUNC4(&real_qp->device->event_handler_lock, flags);
	FUNC3(&qp->open_list, &real_qp->open_list);
	FUNC5(&real_qp->device->event_handler_lock, flags);

	return qp;
}