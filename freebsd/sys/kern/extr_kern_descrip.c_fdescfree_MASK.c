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
struct vnode {int dummy; } ;
struct thread {struct proc* td_proc; } ;
struct proc {struct filedesc* p_fd; int /*<<< orphan*/ * p_fdtol; } ;
struct filedesc {struct vnode* fd_jdir; struct vnode* fd_rdir; struct vnode* fd_cdir; int /*<<< orphan*/  fd_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  RACCT_NOFILE ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*,struct filedesc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*) ; 

void
FUNC11(struct thread *td)
{
	struct proc *p;
	struct filedesc *fdp;
	struct vnode *cdir, *jdir, *rdir;

	p = td->td_proc;
	fdp = p->p_fd;
	FUNC2(fdp != NULL);

#ifdef RACCT
	if (RACCT_ENABLED())
		racct_set_unlocked(p, RACCT_NOFILE, 0);
#endif

	if (p->p_fdtol != NULL)
		FUNC6(td);

	FUNC3(p);
	p->p_fd = NULL;
	FUNC4(p);

	if (FUNC9(&fdp->fd_refcnt) == 0)
		return;

	FUNC0(fdp);
	cdir = fdp->fd_cdir;
	fdp->fd_cdir = NULL;
	rdir = fdp->fd_rdir;
	fdp->fd_rdir = NULL;
	jdir = fdp->fd_jdir;
	fdp->fd_jdir = NULL;
	FUNC1(fdp);

	if (cdir != NULL)
		FUNC10(cdir);
	if (rdir != NULL)
		FUNC10(rdir);
	if (jdir != NULL)
		FUNC10(jdir);

	FUNC7(td, fdp, 1);
}