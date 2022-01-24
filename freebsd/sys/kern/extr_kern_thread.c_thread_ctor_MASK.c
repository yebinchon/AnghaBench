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
struct thread {int td_critnest; int /*<<< orphan*/  td_lend_user_pri; int /*<<< orphan*/  td_tid; int /*<<< orphan*/  td_oncpu; int /*<<< orphan*/  td_lastcpu; int /*<<< orphan*/  td_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int (*) (void*,int,void*,int),struct thread*) ; 
 int /*<<< orphan*/  NOCPU ; 
 int /*<<< orphan*/  PRI_MAX ; 
 int /*<<< orphan*/  TDS_INACTIVE ; 
 int /*<<< orphan*/  FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 

__attribute__((used)) static int
FUNC4(void *mem, int size, void *arg, int flags)
{
	struct thread	*td;

	td = (struct thread *)mem;
	td->td_state = TDS_INACTIVE;
	td->td_lastcpu = td->td_oncpu = NOCPU;

	td->td_tid = FUNC2();

	/*
	 * Note that td_critnest begins life as 1 because the thread is not
	 * running and is thereby implicitly waiting to be on the receiving
	 * end of a context switch.
	 */
	td->td_critnest = 1;
	td->td_lend_user_pri = PRI_MAX;
	FUNC0(thread_ctor, td);
#ifdef AUDIT
	audit_thread_alloc(td);
#endif
	FUNC3(td);
	return (0);
}