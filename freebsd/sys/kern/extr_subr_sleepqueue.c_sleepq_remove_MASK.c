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
struct thread {void* td_wchan; } ;
struct sleepqueue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 struct sleepqueue* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (struct sleepqueue*,struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*) ; 

void
FUNC9(struct thread *td, void *wchan)
{
	struct sleepqueue *sq;
	int wakeup_swapper;

	/*
	 * Look up the sleep queue for this wait channel, then re-check
	 * that the thread is asleep on that channel, if it is not, then
	 * bail.
	 */
	FUNC0(wchan != NULL);
	FUNC3(wchan);
	sq = FUNC4(wchan);
	/*
	 * We can not lock the thread here as it may be sleeping on a
	 * different sleepq.  However, holding the sleepq lock for this
	 * wchan can guarantee that we do not miss a wakeup for this
	 * channel.  The asserts below will catch any false positives.
	 */
	if (!FUNC1(td) || td->td_wchan != wchan) {
		FUNC5(wchan);
		return;
	}
	/* Thread is asleep on sleep queue sq, so wake it up. */
	FUNC7(td);
	FUNC0(sq != NULL);
	FUNC0(td->td_wchan == wchan);
	wakeup_swapper = FUNC6(sq, td, 0);
	FUNC8(td);
	FUNC5(wchan);
	if (wakeup_swapper)
		FUNC2();
}