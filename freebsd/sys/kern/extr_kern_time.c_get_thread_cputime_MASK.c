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
typedef  scalar_t__ uint64_t ;
struct timespec {int dummy; } ;
struct thread {scalar_t__ td_runtime; } ;
struct TYPE_2__ {scalar_t__ td_runtime; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 

__attribute__((used)) static void
FUNC7(struct thread *targettd, struct timespec *ats)
{
	uint64_t runtime, curtime, switchtime;

	if (targettd == NULL) { /* current thread */
		FUNC3();
		switchtime = FUNC0(switchtime);
		curtime = FUNC1();
		runtime = curthread->td_runtime;
		FUNC4();
		runtime += curtime - switchtime;
	} else {
		FUNC5(targettd);
		runtime = targettd->td_runtime;
		FUNC6(targettd);
	}
	FUNC2(runtime, ats);
}