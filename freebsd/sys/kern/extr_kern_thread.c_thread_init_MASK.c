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
struct thread {int /*<<< orphan*/ * td_sel; scalar_t__ td_kstack; int /*<<< orphan*/ * td_rlqe; int /*<<< orphan*/  td_turnstile; int /*<<< orphan*/  td_sleepqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int (*) (void*,int,int),struct thread*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 

__attribute__((used)) static int
FUNC4(void *mem, int size, int flags)
{
	struct thread *td;

	td = (struct thread *)mem;

	td->td_sleepqueue = FUNC1();
	td->td_turnstile = FUNC2();
	td->td_rlqe = NULL;
	FUNC0(thread_init, td);
	FUNC3(td);
	td->td_kstack = 0;
	td->td_sel = NULL;
	return (0);
}