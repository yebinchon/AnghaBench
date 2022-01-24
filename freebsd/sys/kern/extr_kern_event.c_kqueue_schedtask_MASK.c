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
struct kqueue {int kq_state; int /*<<< orphan*/  kq_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct kqueue*) ; 
 int KQ_TASKDRAIN ; 
 int KQ_TASKSCHED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_kqueue_ctx ; 

__attribute__((used)) static void
FUNC3(struct kqueue *kq)
{

	FUNC1(kq);
	FUNC0(((kq->kq_state & KQ_TASKDRAIN) != KQ_TASKDRAIN),
	    ("scheduling kqueue task while draining"));

	if ((kq->kq_state & KQ_TASKSCHED) != KQ_TASKSCHED) {
		FUNC2(taskqueue_kqueue_ctx, &kq->kq_task);
		kq->kq_state |= KQ_TASKSCHED;
	}
}