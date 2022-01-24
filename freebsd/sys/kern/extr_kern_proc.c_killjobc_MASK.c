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
struct vnode {int dummy; } ;
struct tty {struct session* t_session; } ;
struct session {int /*<<< orphan*/ * s_leader; int /*<<< orphan*/ * s_ttydp; struct vnode* s_ttyvp; struct tty* s_ttyp; } ;
struct proc {int p_flag; scalar_t__ p_pgrp; struct session* p_session; int /*<<< orphan*/  p_children; TYPE_1__* p_pptr; } ;
struct TYPE_2__ {scalar_t__ p_pgrp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int P_WEXIT ; 
 int /*<<< orphan*/  REVOKEALL ; 
 scalar_t__ FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct session*) ; 
 int /*<<< orphan*/  FUNC6 (struct session*) ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,int /*<<< orphan*/ ) ; 
 struct proc* curproc ; 
 int /*<<< orphan*/  FUNC9 (struct proc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct tty*) ; 
 int /*<<< orphan*/  FUNC13 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct tty*) ; 
 scalar_t__ FUNC15 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct vnode*) ; 

void
FUNC17(void)
{
	struct session *sp;
	struct tty *tp;
	struct proc *p;
	struct vnode *ttyvp;

	p = curproc;
	FUNC1(p->p_flag & P_WEXIT);
	/*
	 * Do a quick check to see if there is anything to do with the
	 * proctree_lock held. pgrp and LIST_EMPTY checks are for fixjobc().
	 */
	FUNC2(p);
	if (!FUNC4(p) &&
	    (p->p_pgrp == p->p_pptr->p_pgrp) &&
	    FUNC0(&p->p_children)) {
		FUNC3(p);
		return;
	}
	FUNC3(p);

	FUNC10(&proctree_lock);
	if (FUNC4(p)) {
		sp = p->p_session;

		/*
		 * s_ttyp is not zero'd; we use this to indicate that
		 * the session once had a controlling terminal. (for
		 * logging and informational purposes)
		 */
		FUNC5(sp);
		ttyvp = sp->s_ttyvp;
		tp = sp->s_ttyp;
		sp->s_ttyvp = NULL;
		sp->s_ttydp = NULL;
		sp->s_leader = NULL;
		FUNC6(sp);

		/*
		 * Signal foreground pgrp and revoke access to
		 * controlling terminal if it has not been revoked
		 * already.
		 *
		 * Because the TTY may have been revoked in the mean
		 * time and could already have a new session associated
		 * with it, make sure we don't send a SIGHUP to a
		 * foreground process group that does not belong to this
		 * session.
		 */

		if (tp != NULL) {
			FUNC12(tp);
			if (tp->t_session == sp)
				FUNC13(tp, SIGHUP);
			FUNC14(tp);
		}

		if (ttyvp != NULL) {
			FUNC11(&proctree_lock);
			if (FUNC15(ttyvp, LK_EXCLUSIVE) == 0) {
				FUNC7(ttyvp, REVOKEALL);
				FUNC8(ttyvp, 0);
			}
			FUNC16(ttyvp);
			FUNC10(&proctree_lock);
		}
	}
	FUNC9(p, p->p_pgrp, 0);
	FUNC11(&proctree_lock);
}