#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tdq {int /*<<< orphan*/  tdq_lowpri; } ;
struct TYPE_3__ {int /*<<< orphan*/  td_priority; int /*<<< orphan*/  td_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tdq*) ; 
 int /*<<< orphan*/  FUNC1 (struct tdq*) ; 
 struct tdq* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct tdq*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct tdq*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct tdq*,int /*<<< orphan*/ ) ; 
 TYPE_1__ thread0 ; 

__attribute__((used)) static void
FUNC7(void *dummy)
{
	struct tdq *tdq;

#ifdef SMP
	sched_setup_smp();
#else
	FUNC6(FUNC2(), 0);
#endif
	tdq = FUNC2();

	/* Add thread0's load since it's running. */
	FUNC0(tdq);
	thread0.td_lock = FUNC1(FUNC2());
	FUNC5(tdq, &thread0);
	tdq->tdq_lowpri = thread0.td_priority;
	FUNC3(tdq);
}