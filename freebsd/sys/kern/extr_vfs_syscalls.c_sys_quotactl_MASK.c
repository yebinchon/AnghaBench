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
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct quotactl_args {int cmd; int /*<<< orphan*/  arg; int /*<<< orphan*/  uid; int /*<<< orphan*/  path; } ;
struct nameidata {TYPE_1__* ni_vp; } ;
struct mount {int dummy; } ;
struct TYPE_2__ {struct mount* v_mount; } ;

/* Variables and functions */
 int AUDITVNODE1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EPERM ; 
 int FOLLOW ; 
 int LOCKLEAF ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC3 (struct nameidata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  PR_ALLOW_QUOTAS ; 
 int Q_QUOTAOFF ; 
 int Q_QUOTAON ; 
 int SUBCMDSHIFT ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC4 (struct mount*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mount*) ; 
 int /*<<< orphan*/  FUNC9 (struct mount*) ; 
 int /*<<< orphan*/  FUNC10 (struct mount*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

int
FUNC12(struct thread *td, struct quotactl_args *uap)
{
	struct mount *mp;
	struct nameidata nd;
	int error;

	FUNC0(uap->cmd);
	FUNC1(uap->uid);
	if (!FUNC6(td->td_ucred, PR_ALLOW_QUOTAS))
		return (EPERM);
	FUNC3(&nd, LOOKUP, FOLLOW | LOCKLEAF | AUDITVNODE1, UIO_USERSPACE,
	    uap->path, td);
	if ((error = FUNC5(&nd)) != 0)
		return (error);
	FUNC2(&nd, NDF_ONLY_PNBUF);
	mp = nd.ni_vp->v_mount;
	FUNC8(mp);
	FUNC11(nd.ni_vp);
	error = FUNC7(mp, 0);
	FUNC9(mp);
	if (error != 0)
		return (error);
	error = FUNC4(mp, uap->cmd, uap->uid, uap->arg);

	/*
	 * Since quota on operation typically needs to open quota
	 * file, the Q_QUOTAON handler needs to unbusy the mount point
	 * before calling into namei.  Otherwise, unmount might be
	 * started between two vfs_busy() invocations (first is our,
	 * second is from mount point cross-walk code in lookup()),
	 * causing deadlock.
	 *
	 * Require that Q_QUOTAON handles the vfs_busy() reference on
	 * its own, always returning with ubusied mount point.
	 */
	if ((uap->cmd >> SUBCMDSHIFT) != Q_QUOTAON &&
	    (uap->cmd >> SUBCMDSHIFT) != Q_QUOTAOFF)
		FUNC10(mp);
	return (error);
}