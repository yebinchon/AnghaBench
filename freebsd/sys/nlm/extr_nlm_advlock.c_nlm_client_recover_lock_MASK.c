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
struct ucred {int dummy; } ;
struct thread {struct ucred* td_ucred; } ;
struct nlm_recovery_context {int nr_state; int /*<<< orphan*/  nr_host; } ;
struct flock {int dummy; } ;

/* Variables and functions */
 int ERESTART ; 
 int /*<<< orphan*/  F_REMOTE ; 
 int /*<<< orphan*/  F_SETLK ; 
 int /*<<< orphan*/  LK_SHARED ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ucred*) ; 
 struct thread* curthread ; 
 int FUNC1 (struct vnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct flock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,struct flock*) ; 
 int FUNC4 (struct vnode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct vnode *vp, struct flock *fl, void *arg)
{
	struct nlm_recovery_context *nr = (struct nlm_recovery_context *) arg;
	struct thread *td = curthread;
	struct ucred *oldcred;
	int state, error;

	/*
	 * If the remote NSM state changes during recovery, the host
	 * must have rebooted a second time. In that case, we must
	 * restart the recovery.
	 */
	state = FUNC2(nr->nr_host);
	if (nr->nr_state != state)
		return (ERESTART);

	error = FUNC4(vp, LK_SHARED);
	if (error)
		return (error);

	oldcred = td->td_ucred;
	FUNC3(td, fl);

	error = FUNC1(vp, NULL, F_SETLK, fl, F_REMOTE,
	    TRUE, TRUE);

	FUNC0(td->td_ucred);
	td->td_ucred = oldcred;

	return (error);
}