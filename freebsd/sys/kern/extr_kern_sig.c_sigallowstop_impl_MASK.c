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
struct thread {int td_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int SIGDEFERSTOP_VAL_NCHG ; 
 int TDF_SBDRY ; 
 int TDF_SEINTR ; 
 int TDF_SERESTART ; 
 struct thread* curthread ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 

void
FUNC4(int prev)
{
	struct thread *td;
	int cflags;

	FUNC0(prev != SIGDEFERSTOP_VAL_NCHG, ("failed sigallowstop"));
	FUNC0((prev & ~(TDF_SBDRY | TDF_SEINTR | TDF_SERESTART)) == 0,
	    ("sigallowstop: incorrect previous mode %x", prev));
	td = curthread;
	cflags = FUNC1(td->td_flags);
	if (cflags != prev) {
		FUNC2(td);
		td->td_flags = (td->td_flags & ~cflags) | prev;
		FUNC3(td);
	}
}