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
struct thread {int p_numthreads; int /*<<< orphan*/ * p_ksi; int /*<<< orphan*/ * td_su; int /*<<< orphan*/  p_ktr; } ;
struct proc {int p_numthreads; int /*<<< orphan*/ * p_ksi; int /*<<< orphan*/ * td_su; int /*<<< orphan*/  p_ktr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct thread*) ; 
 struct thread* FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 
 int /*<<< orphan*/  process_dtor ; 
 int /*<<< orphan*/  FUNC7 (struct thread*) ; 
 int /*<<< orphan*/  thread_dtor ; 

__attribute__((used)) static void
FUNC8(void *mem, int size, void *arg)
{
	struct proc *p;
	struct thread *td;

	/* INVARIANTS checks go here */
	p = (struct proc *)mem;
	td = FUNC1(p);
	if (td != NULL) {
#ifdef INVARIANTS
		KASSERT((p->p_numthreads == 1),
		    ("bad number of threads in exiting process"));
		KASSERT(STAILQ_EMPTY(&p->p_ktr), ("proc_dtor: non-empty p_ktr"));
#endif
		/* Free all OSD associated to this thread. */
		FUNC6(td);
		FUNC7(td);
		FUNC4(td->td_su == NULL);

		/* Make sure all thread destructors are executed */
		FUNC0(thread_dtor, td);
	}
	FUNC0(process_dtor, p);
	if (p->p_ksi != NULL)
		FUNC2(! FUNC3(p->p_ksi), ("SIGCHLD queue"));
}