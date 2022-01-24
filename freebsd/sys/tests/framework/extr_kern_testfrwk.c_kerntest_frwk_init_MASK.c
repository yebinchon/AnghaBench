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
typedef  scalar_t__ u_int ;
struct TYPE_3__ {scalar_t__ kfrwk_waiting; int /*<<< orphan*/ * kfrwk_tq; int /*<<< orphan*/  kfrwk_que; int /*<<< orphan*/  kfrwk_testlist; int /*<<< orphan*/  kfrwk_testq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ MAXCPU ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__ kfrwk ; 
 int /*<<< orphan*/  kfrwk_task ; 
 int ktest_frwk_inited ; 
 scalar_t__ mp_ncpus ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

__attribute__((used)) static int
FUNC7(void)
{
	u_int ncpus = mp_ncpus ? mp_ncpus : MAXCPU;

	FUNC0();
	FUNC1(&kfrwk.kfrwk_testq);
	FUNC1(&kfrwk.kfrwk_testlist);
	/* Now lets start up a number of tasks to do the work */
	FUNC2(&kfrwk.kfrwk_que, 0, kfrwk_task, &kfrwk);
	kfrwk.kfrwk_tq = FUNC5("sbtls_task", M_NOWAIT,
	    taskqueue_thread_enqueue, &kfrwk.kfrwk_tq);
	if (kfrwk.kfrwk_tq == NULL) {
		FUNC4("Can't start taskqueue for Kernel Test Framework\n");
		FUNC3("Taskqueue init fails for kfrwk");
	}
	FUNC6(&kfrwk.kfrwk_tq, ncpus, PI_NET, "[kt_frwk task]");
	kfrwk.kfrwk_waiting = ncpus;
	ktest_frwk_inited = 1;
	return (0);
}