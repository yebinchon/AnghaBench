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
struct vop_rmdir_args {struct componentname* a_cnp; struct vnode* a_dvp; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct inode {int i_flags; scalar_t__ i_nlink; int /*<<< orphan*/  i_flag; int /*<<< orphan*/  i_number; } ;
struct componentname {int /*<<< orphan*/  cn_thread; int /*<<< orphan*/  cn_cred; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int APPEND ; 
 int ENOTEMPTY ; 
 int EPERM ; 
 int IMMUTABLE ; 
 int /*<<< orphan*/  IN_CHANGE ; 
 int /*<<< orphan*/  IO_SYNC ; 
 struct vnode* FUNC0 (struct inode*) ; 
 int LK_EXCLUSIVE ; 
 int LK_NOWAIT ; 
 int LK_RETRY ; 
 int NOUNLINK ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct vnode*,struct componentname*) ; 
 int FUNC7 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC9(struct vop_rmdir_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct vnode *dvp = ap->a_dvp;
	struct componentname *cnp = ap->a_cnp;
	struct inode *ip, *dp;
	int error;

	ip = FUNC2(vp);
	dp = FUNC2(dvp);

	/*
	 * Verify the directory is empty (and valid).
	 * (Rmdir ".." won't be valid since
	 *  ".." will contain a reference to
	 *  the current directory and thus be
	 *  non-empty.)
	 */
	if (!FUNC5(ip, dp->i_number, cnp->cn_cred)) {
		error = ENOTEMPTY;
		goto out;
	}
	if ((dp->i_flags & APPEND)
	    || (ip->i_flags & (NOUNLINK | IMMUTABLE | APPEND))) {
		error = EPERM;
		goto out;
	}
	/*
	 * Delete reference to directory before purging
	 * inode.  If we crash in between, the directory
	 * will be reattached to lost+found,
	 */
	error = FUNC6(dvp, cnp);
	if (error)
		goto out;
	FUNC4(dp);
	dp->i_flag |= IN_CHANGE;
	FUNC3(dvp);
	FUNC1(dvp, 0);
	/*
	 * Truncate inode.  The only stuff left
	 * in the directory is "." and "..".
	 */
	ip->i_nlink = 0;
	error = FUNC7(vp, (off_t)0, IO_SYNC, cnp->cn_cred,
	    cnp->cn_thread);
	FUNC3(FUNC0(ip));
	if (FUNC8(dvp, LK_EXCLUSIVE | LK_NOWAIT) != 0) {
		FUNC1(vp, 0);
		FUNC8(dvp, LK_EXCLUSIVE | LK_RETRY);
		FUNC8(vp, LK_EXCLUSIVE | LK_RETRY);
	}
out:
	return (error);
}