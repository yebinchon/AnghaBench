#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct procdesc {int pd_flags; struct proc* pd_proc; } ;
struct proc {scalar_t__ p_state; int p_flag; TYPE_1__* p_reaper; int /*<<< orphan*/  p_oppid; int /*<<< orphan*/  p_sigparent; int /*<<< orphan*/ * p_procdesc; } ;
struct file {scalar_t__ f_type; struct procdesc* f_data; int /*<<< orphan*/ * f_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 scalar_t__ DTYPE_PROCDESC ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int PDF_CLOSED ; 
 int PDF_DAEMON ; 
 int /*<<< orphan*/  FUNC2 (struct procdesc*) ; 
 int /*<<< orphan*/  FUNC3 (struct procdesc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 scalar_t__ PRS_ZOMBIE ; 
 int P_TRACED ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  badfileops ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC6 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct proc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct proc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct proc*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct procdesc*) ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(struct file *fp, struct thread *td)
{
	struct procdesc *pd;
	struct proc *p;

	FUNC1(fp->f_type == DTYPE_PROCDESC, ("procdesc_close: !procdesc"));

	pd = fp->f_data;
	fp->f_ops = &badfileops;
	fp->f_data = NULL;

	FUNC12(&proctree_lock);
	FUNC2(pd);
	pd->pd_flags |= PDF_CLOSED;
	FUNC3(pd);
	p = pd->pd_proc;
	if (p == NULL) {
		/*
		 * This is the case where process' exit status was already
		 * collected and procdesc_reap() was already called.
		 */
		FUNC13(&proctree_lock);
	} else {
		FUNC4(p);
		FUNC0(p);
		if (p->p_state == PRS_ZOMBIE) {
			/*
			 * If the process is already dead and just awaiting
			 * reaping, do that now.  This will release the
			 * process's reference to the process descriptor when it
			 * calls back into procdesc_reap().
			 */
			FUNC9(curthread, p, NULL, 0);
		} else {
			/*
			 * If the process is not yet dead, we need to kill it,
			 * but we can't wait around synchronously for it to go
			 * away, as that path leads to madness (and deadlocks).
			 * First, detach the process from its descriptor so that
			 * its exit status will be reported normally.
			 */
			pd->pd_proc = NULL;
			p->p_procdesc = NULL;
			FUNC11(pd);

			/*
			 * Next, reparent it to its reaper (usually init(8)) so
			 * that there's someone to pick up the pieces; finally,
			 * terminate with prejudice.
			 */
			p->p_sigparent = SIGCHLD;
			if ((p->p_flag & P_TRACED) == 0) {
				FUNC10(p, p->p_reaper, true);
			} else {
				FUNC8(p);
				p->p_oppid = p->p_reaper->p_pid;
				FUNC7(p, p->p_reaper);
			}
			if ((pd->pd_flags & PDF_DAEMON) == 0)
				FUNC6(p, SIGKILL);
			FUNC5(p);
			FUNC13(&proctree_lock);
		}
	}

	/*
	 * Release the file descriptor's reference on the process descriptor.
	 */
	FUNC11(pd);
	return (0);
}