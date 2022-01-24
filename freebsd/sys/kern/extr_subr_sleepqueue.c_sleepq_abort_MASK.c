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
struct thread {int td_flags; int td_intrval; void* td_wchan; scalar_t__ td_name; TYPE_1__* td_proc; } ;
struct sleepqueue {int dummy; } ;
struct TYPE_2__ {scalar_t__ p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,void*,long,void*) ; 
 int EINTR ; 
 int ERESTART ; 
 int /*<<< orphan*/  KTR_PROC ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int TDF_SINTR ; 
 int TDF_SLEEPABORT ; 
 int TDF_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int /*<<< orphan*/ ) ; 
 struct sleepqueue* FUNC5 (void*) ; 
 int FUNC6 (struct sleepqueue*,struct thread*,int /*<<< orphan*/ ) ; 

int
FUNC7(struct thread *td, int intrval)
{
	struct sleepqueue *sq;
	void *wchan;

	FUNC4(td, MA_OWNED);
	FUNC1(FUNC3(td));
	FUNC1(td->td_flags & TDF_SINTR);
	FUNC1(intrval == EINTR || intrval == ERESTART);

	/*
	 * If the TDF_TIMEOUT flag is set, just leave. A
	 * timeout is scheduled anyhow.
	 */
	if (td->td_flags & TDF_TIMEOUT)
		return (0);

	FUNC0(KTR_PROC, "sleepq_abort: thread %p (pid %ld, %s)",
	    (void *)td, (long)td->td_proc->p_pid, (void *)td->td_name);
	td->td_intrval = intrval;
	td->td_flags |= TDF_SLEEPABORT;
	/*
	 * If the thread has not slept yet it will find the signal in
	 * sleepq_catch_signals() and call sleepq_resume_thread.  Otherwise
	 * we have to do it here.
	 */
	if (!FUNC2(td))
		return (0);
	wchan = td->td_wchan;
	FUNC1(wchan != NULL);
	sq = FUNC5(wchan);
	FUNC1(sq != NULL);

	/* Thread is asleep on sleep queue sq, so wake it up. */
	return (FUNC6(sq, td, 0));
}