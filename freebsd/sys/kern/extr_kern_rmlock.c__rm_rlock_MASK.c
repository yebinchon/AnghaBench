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
struct thread {size_t td_oncpu; int td_owepreempt; int /*<<< orphan*/  td_critnest; } ;
struct TYPE_2__ {int lo_flags; } ;
struct rmlock {int /*<<< orphan*/  rm_writecpus; TYPE_1__ lock_object; } ;
struct rm_priotracker {struct rmlock* rmp_rmlock; struct thread* rmp_thread; scalar_t__ rmp_flags; } ;
struct pcpu {int /*<<< orphan*/  pc_cpuid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int LO_SLEEPABLE ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct rmlock*,struct rm_priotracker*,int) ; 
 struct pcpu** cpuid_to_pcpu ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC6 (struct pcpu*,struct rm_priotracker*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(struct rmlock *rm, struct rm_priotracker *tracker, int trylock)
{
	struct thread *td = curthread;
	struct pcpu *pc;

	if (FUNC1())
		return (1);

	tracker->rmp_flags  = 0;
	tracker->rmp_thread = td;
	tracker->rmp_rmlock = rm;

	if (rm->lock_object.lo_flags & LO_SLEEPABLE)
		FUNC2();

	td->td_critnest++;	/* critical_enter(); */

	FUNC3();

	pc = cpuid_to_pcpu[td->td_oncpu]; /* pcpu_find(td->td_oncpu); */

	FUNC6(pc, tracker);

	FUNC7();

	FUNC3();

	td->td_critnest--;

	/*
	 * Fast path to combine two common conditions into a single
	 * conditional jump.
	 */
	if (FUNC4(0 == (td->td_owepreempt |
	    FUNC0(pc->pc_cpuid, &rm->rm_writecpus))))
		return (1);

	/* We do not have a read token and need to acquire one. */
	return FUNC5(rm, tracker, trylock);
}