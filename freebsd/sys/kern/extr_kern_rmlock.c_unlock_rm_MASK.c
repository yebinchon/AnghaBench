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
struct thread {int dummy; } ;
struct rmlock {int dummy; } ;
struct rm_queue {struct rm_queue* rmq_next; } ;
struct rm_priotracker {struct thread* rmp_thread; struct rmlock* rmp_rmlock; } ;
struct pcpu {struct rm_queue pc_rm_queue; } ;
struct lock_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int RA_LOCKED ; 
 int RA_NOTRECURSED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct thread* curthread ; 
 struct pcpu* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct rmlock*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rmlock*,struct rm_priotracker*) ; 
 scalar_t__ FUNC6 (struct rmlock*) ; 
 int /*<<< orphan*/  FUNC7 (struct rmlock*) ; 

__attribute__((used)) static uintptr_t
FUNC8(struct lock_object *lock)
{
	struct thread *td;
	struct pcpu *pc;
	struct rmlock *rm;
	struct rm_queue *queue;
	struct rm_priotracker *tracker;
	uintptr_t how;

	rm = (struct rmlock *)lock;
	tracker = NULL;
	how = 0;
	FUNC4(rm, RA_LOCKED | RA_NOTRECURSED);
	if (FUNC6(rm))
		FUNC7(rm);
	else {
		/*
		 * Find the right rm_priotracker structure for curthread.
		 * The guarantee about its uniqueness is given by the fact
		 * we already asserted the lock wasn't recursively acquired.
		 */
		FUNC1();
		td = curthread;
		pc = FUNC3();
		for (queue = pc->pc_rm_queue.rmq_next;
		    queue != &pc->pc_rm_queue; queue = queue->rmq_next) {
			tracker = (struct rm_priotracker *)queue;
				if ((tracker->rmp_rmlock == rm) &&
				    (tracker->rmp_thread == td)) {
					how = (uintptr_t)tracker;
					break;
				}
		}
		FUNC0(tracker != NULL,
		    ("rm_priotracker is non-NULL when lock held in read mode"));
		FUNC2();
		FUNC5(rm, tracker);
	}
	return (how);
}