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
struct gtaskqueue {int tq_flags; int /*<<< orphan*/  tq_threads; int /*<<< orphan*/  tq_tcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASKQUEUE_CALLBACK_TYPE_INIT ; 
 int /*<<< orphan*/  TASKQUEUE_CALLBACK_TYPE_SHUTDOWN ; 
 int TQ_FLAGS_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct gtaskqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct gtaskqueue*,struct gtaskqueue*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gtaskqueue*) ; 
 int /*<<< orphan*/  FUNC3 (struct gtaskqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gtaskqueue*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct gtaskqueue **tqp, *tq;

	tqp = arg;
	tq = *tqp;
	FUNC3(tq, TASKQUEUE_CALLBACK_TYPE_INIT);
	FUNC0(tq);
	while ((tq->tq_flags & TQ_FLAGS_ACTIVE) != 0) {
		/* XXX ? */
		FUNC4(tq);
		/*
		 * Because taskqueue_run() can drop tq_mutex, we need to
		 * check if the TQ_FLAGS_ACTIVE flag wasn't removed in the
		 * meantime, which means we missed a wakeup.
		 */
		if ((tq->tq_flags & TQ_FLAGS_ACTIVE) == 0)
			break;
		FUNC1(tq, tq, "-");
	}
	FUNC4(tq);
	/*
	 * This thread is on its way out, so just drop the lock temporarily
	 * in order to call the shutdown callback.  This allows the callback
	 * to look at the taskqueue, even just before it dies.
	 */
	FUNC2(tq);
	FUNC3(tq, TASKQUEUE_CALLBACK_TYPE_SHUTDOWN);
	FUNC0(tq);

	/* rendezvous with thread that asked us to terminate */
	tq->tq_tcount--;
	FUNC6(tq->tq_threads);
	FUNC2(tq);
	FUNC5();
}