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
struct thread {scalar_t__ td_sleeptimo; int td_flags; int /*<<< orphan*/  td_slpcallout; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int TDF_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct thread* curthread ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static int
FUNC3(void)
{
	struct thread *td;
	int res;

	td = curthread;
	FUNC0(td, MA_OWNED);

	/*
	 * If TDF_TIMEOUT is set, we timed out.  But recheck
	 * td_sleeptimo anyway.
	 */
	res = 0;
	if (td->td_sleeptimo != 0) {
		if (td->td_sleeptimo <= FUNC2())
			res = EWOULDBLOCK;
		td->td_sleeptimo = 0;
	}
	if (td->td_flags & TDF_TIMEOUT)
		td->td_flags &= ~TDF_TIMEOUT;
	else
		/*
		 * We ignore the situation where timeout subsystem was
		 * unable to stop our callout.  The struct thread is
		 * type-stable, the callout will use the correct
		 * memory when running.  The checks of the
		 * td_sleeptimo value in this function and in
		 * sleepq_timeout() ensure that the thread does not
		 * get spurious wakeups, even if the callout was reset
		 * or thread reused.
		 */
		FUNC1(&td->td_slpcallout);
	return (res);
}