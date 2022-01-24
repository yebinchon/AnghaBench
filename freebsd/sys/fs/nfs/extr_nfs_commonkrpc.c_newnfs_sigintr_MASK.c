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
struct thread {int /*<<< orphan*/  td_siglist; int /*<<< orphan*/  td_sigmask; struct proc* td_proc; } ;
struct proc {int /*<<< orphan*/  p_siglist; TYPE_1__* p_sigacts; } ;
struct nfsmount {int nm_flag; int /*<<< orphan*/  nm_mountp; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_2__ {int /*<<< orphan*/  ps_mtx; int /*<<< orphan*/  ps_sigignore; } ;

/* Variables and functions */
 int EINTR ; 
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NFSMNT_INT ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(struct nfsmount *nmp, struct thread *td)
{
	struct proc *p;
	sigset_t tmpset;
	
	/* Terminate all requests while attempting a forced unmount. */
	if (FUNC0(nmp->nm_mountp))
		return (EIO);
	if (!(nmp->nm_flag & NFSMNT_INT))
		return (0);
	if (td == NULL)
		return (0);
	p = td->td_proc;
	FUNC1(p);
	tmpset = p->p_siglist;
	FUNC5(tmpset, td->td_siglist);
	FUNC4(tmpset, td->td_sigmask);
	FUNC6(&p->p_sigacts->ps_mtx);
	FUNC4(tmpset, p->p_sigacts->ps_sigignore);
	FUNC7(&p->p_sigacts->ps_mtx);
	if ((FUNC3(p->p_siglist) || FUNC3(td->td_siglist))
	    && FUNC8(tmpset)) {
		FUNC2(p);
		return (EINTR);
	}
	FUNC2(p);
	return (0);
}