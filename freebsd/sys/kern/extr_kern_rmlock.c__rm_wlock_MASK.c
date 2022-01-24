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
struct turnstile {int dummy; } ;
struct TYPE_2__ {int lo_flags; } ;
struct rmlock {TYPE_1__ lock_object; int /*<<< orphan*/  rm_activeReaders; void* rm_writecpus; int /*<<< orphan*/  rm_lock_mtx; int /*<<< orphan*/  rm_lock_sx; } ;
struct rm_priotracker {int rmp_flags; int /*<<< orphan*/  rmp_thread; } ;
typedef  void* cpuset_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (void**,void**) ; 
 int /*<<< orphan*/  FUNC1 (void**,void**) ; 
 struct rm_priotracker* FUNC2 (int /*<<< orphan*/ *) ; 
 int LO_SLEEPABLE ; 
 int RMPF_ONQUEUE ; 
 int RMPF_SIGNAL ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  TS_EXCLUSIVE_QUEUE ; 
 void* all_cpus ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rmlock*) ; 
 int /*<<< orphan*/  rm_spinlock ; 
 int /*<<< orphan*/  smp_no_rendezvous_barrier ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct rmlock*),int /*<<< orphan*/ ,struct rmlock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct turnstile* FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct turnstile*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC12(struct rmlock *rm)
{
	struct rm_priotracker *prio;
	struct turnstile *ts;
	cpuset_t readcpus;

	if (FUNC3())
		return;

	if (rm->lock_object.lo_flags & LO_SLEEPABLE)
		FUNC9(&rm->rm_lock_sx);
	else
		FUNC4(&rm->rm_lock_mtx);

	if (FUNC0(&rm->rm_writecpus, &all_cpus)) {
		/* Get all read tokens back */
		readcpus = all_cpus;
		FUNC1(&readcpus, &rm->rm_writecpus);
		rm->rm_writecpus = all_cpus;

		/*
		 * Assumes rm->rm_writecpus update is visible on other CPUs
		 * before rm_cleanIPI is called.
		 */
#ifdef SMP
		smp_rendezvous_cpus(readcpus,
		    smp_no_rendezvous_barrier,
		    rm_cleanIPI,
		    smp_no_rendezvous_barrier,
		    rm);

#else
		FUNC7(rm);
#endif

		FUNC5(&rm_spinlock);
		while ((prio = FUNC2(&rm->rm_activeReaders)) != NULL) {
			ts = FUNC10(&rm->lock_object);
			prio->rmp_flags = RMPF_ONQUEUE | RMPF_SIGNAL;
			FUNC6(&rm_spinlock);
			FUNC11(ts, prio->rmp_thread,
			    TS_EXCLUSIVE_QUEUE);
			FUNC5(&rm_spinlock);
		}
		FUNC6(&rm_spinlock);
	}
}