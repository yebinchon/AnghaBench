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
struct thread {TYPE_1__* td_proc; } ;
struct proc {int dummy; } ;
struct pfs_node {int /*<<< orphan*/  pn_name; } ;
typedef  scalar_t__ pid_t ;
struct TYPE_2__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 scalar_t__ NO_PID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 struct proc* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct thread*,struct pfs_node*,struct proc*) ; 

__attribute__((used)) static int
FUNC5(struct thread *td, struct pfs_node *pn, pid_t pid,
    struct proc **p)
{
	struct proc *proc;

	FUNC1(("%s (pid: %d, req: %d)",
	    pn->pn_name, pid, td->td_proc->p_pid));

	if (p)
		*p = NULL;
	if (pid == NO_PID)
		FUNC0 (1);
	proc = FUNC3(pid);
	if (proc == NULL)
		FUNC0 (0);
	if (FUNC4(td, pn, proc)) {
		if (p)
			*p = proc;
		else
			FUNC2(proc);
		FUNC0 (1);
	}
	FUNC2(proc);
	FUNC0 (0);
}