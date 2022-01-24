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
struct ucred {int /*<<< orphan*/  cr_ruidinfo; } ;
struct tty {int /*<<< orphan*/  t_mtx; } ;
struct thread {struct ucred* td_ucred; struct proc* td_proc; } ;
struct TYPE_4__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_3__ {int /*<<< orphan*/  si_note; } ;
struct pts_softc {int pts_unit; TYPE_2__ pts_outpoll; TYPE_1__ pts_inpoll; int /*<<< orphan*/  pts_cred; int /*<<< orphan*/  pts_outwait; int /*<<< orphan*/  pts_inwait; } ;
struct proc {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTYPE_PTS ; 
 int EAGAIN ; 
 int /*<<< orphan*/  M_PTS ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  RACCT_NPTS ; 
 int /*<<< orphan*/  RLIMIT_NPTS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*,int,int /*<<< orphan*/ ,struct tty*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*,int /*<<< orphan*/ ) ; 
 struct pts_softc* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pts_class ; 
 int /*<<< orphan*/  pts_pool ; 
 int /*<<< orphan*/  ptsdev_ops ; 
 int FUNC10 (struct proc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct proc*,int /*<<< orphan*/ ,int) ; 
 struct tty* FUNC12 (int /*<<< orphan*/ *,struct pts_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct tty*,struct ucred*,char*,int) ; 

int
FUNC14(int fflags, struct thread *td, struct file *fp)
{
	int unit, ok, error;
	struct tty *tp;
	struct pts_softc *psc;
	struct proc *p = td->td_proc;
	struct ucred *cred = td->td_ucred;

	/* Resource limiting. */
	FUNC0(p);
	error = FUNC10(p, RACCT_NPTS, 1);
	if (error != 0) {
		FUNC1(p);
		return (EAGAIN);
	}
	ok = FUNC3(cred->cr_ruidinfo, 1, FUNC8(td, RLIMIT_NPTS));
	if (!ok) {
		FUNC11(p, RACCT_NPTS, 1);
		FUNC1(p);
		return (EAGAIN);
	}
	FUNC1(p);

	/* Try to allocate a new pts unit number. */
	unit = FUNC2(pts_pool);
	if (unit < 0) {
		FUNC11(p, RACCT_NPTS, 1);
		FUNC3(cred->cr_ruidinfo, -1, 0);
		return (EAGAIN);
	}

	/* Allocate TTY and softc. */
	psc = FUNC9(sizeof(struct pts_softc), M_PTS, M_WAITOK|M_ZERO);
	FUNC5(&psc->pts_inwait, "ptsin");
	FUNC5(&psc->pts_outwait, "ptsout");

	psc->pts_unit = unit;
	psc->pts_cred = FUNC4(cred);

	tp = FUNC12(&pts_class, psc);
	FUNC7(&psc->pts_inpoll.si_note, tp->t_mtx);
	FUNC7(&psc->pts_outpoll.si_note, tp->t_mtx);

	/* Expose the slave device as well. */
	FUNC13(tp, td->td_ucred, "pts/%u", psc->pts_unit);

	FUNC6(fp, fflags, DTYPE_PTS, tp, &ptsdev_ops);

	return (0);
}