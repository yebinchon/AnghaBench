#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct timespec {int dummy; } ;
struct rusage {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rux_runtime; } ;
struct proc {TYPE_1__ p_rux; } ;
struct TYPE_4__ {struct proc* td_proc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct timespec*) ; 
 TYPE_2__* curthread ; 
 int /*<<< orphan*/  FUNC5 (struct proc*,struct rusage*) ; 
 int /*<<< orphan*/  switchtime ; 

__attribute__((used)) static void
FUNC6(struct proc *targetp, struct timespec *ats)
{
	uint64_t runtime;
	struct rusage ru;

	FUNC1(targetp);
	FUNC5(targetp, &ru);
	runtime = targetp->p_rux.rux_runtime;
	if (curthread->td_proc == targetp)
		runtime += FUNC3() - FUNC0(switchtime);
	FUNC2(targetp);
	FUNC4(runtime, ats);
}