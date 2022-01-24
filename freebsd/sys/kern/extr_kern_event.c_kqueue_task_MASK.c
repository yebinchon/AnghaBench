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
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct kqueue {int kq_state; TYPE_1__ kq_sel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kqueue*) ; 
 int KQ_TASKDRAIN ; 
 int KQ_TASKSCHED ; 
 int /*<<< orphan*/  FUNC4 (struct kqueue*) ; 
 int /*<<< orphan*/  kq_global ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 

__attribute__((used)) static void
FUNC6(void *arg, int pending)
{
	struct kqueue *kq;
	int haskqglobal;

	haskqglobal = 0;
	kq = arg;

	FUNC1(&kq_global, haskqglobal);
	FUNC3(kq);

	FUNC0(&kq->kq_sel.si_note, 0);

	kq->kq_state &= ~KQ_TASKSCHED;
	if ((kq->kq_state & KQ_TASKDRAIN) == KQ_TASKDRAIN) {
		FUNC5(&kq->kq_state);
	}
	FUNC4(kq);
	FUNC2(&kq_global, haskqglobal);
}