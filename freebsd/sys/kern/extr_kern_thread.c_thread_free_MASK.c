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
struct thread {scalar_t__ td_kstack; int /*<<< orphan*/  td_slpcallout; int /*<<< orphan*/ * td_cpuset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  thread_zone ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 

void
FUNC6(struct thread *td)
{

	FUNC3(td);
	if (td->td_cpuset)
		FUNC2(td->td_cpuset);
	td->td_cpuset = NULL;
	FUNC1(td);
	if (td->td_kstack != 0)
		FUNC5(td);
	FUNC0(&td->td_slpcallout);
	FUNC4(thread_zone, td);
}