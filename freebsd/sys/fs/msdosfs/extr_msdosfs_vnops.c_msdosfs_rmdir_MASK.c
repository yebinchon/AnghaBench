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
typedef  int /*<<< orphan*/  u_long ;
struct vop_rmdir_args {struct componentname* a_cnp; struct vnode* a_dvp; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct denode {int de_flag; } ;
struct componentname {int /*<<< orphan*/  cn_cred; } ;

/* Variables and functions */
 int DE_RENAME ; 
 int ENOTEMPTY ; 
 int /*<<< orphan*/  IO_SYNC ; 
 struct denode* FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int FUNC2 (struct denode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct denode*) ; 
 int FUNC4 (struct denode*,struct denode*) ; 

__attribute__((used)) static int
FUNC5(struct vop_rmdir_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct vnode *dvp = ap->a_dvp;
	struct componentname *cnp = ap->a_cnp;
	struct denode *ip, *dp;
	int error;

	ip = FUNC0(vp);
	dp = FUNC0(dvp);

	/*
	 * Verify the directory is empty (and valid).
	 * (Rmdir ".." won't be valid since
	 *  ".." will contain a reference to
	 *  the current directory and thus be
	 *  non-empty.)
	 */
	error = 0;
	if (!FUNC3(ip) || ip->de_flag & DE_RENAME) {
		error = ENOTEMPTY;
		goto out;
	}
	/*
	 * Delete the entry from the directory.  For dos filesystems this
	 * gets rid of the directory entry on disk, the in memory copy
	 * still exists but the de_refcnt is <= 0.  This prevents it from
	 * being found by deget().  When the vput() on dep is done we give
	 * up access and eventually msdosfs_reclaim() will be called which
	 * will remove it from the denode cache.
	 */
	error = FUNC4(dp, ip);
	if (error)
		goto out;
	/*
	 * This is where we decrement the link count in the parent
	 * directory.  Since dos filesystems don't do this we just purge
	 * the name cache.
	 */
	FUNC1(dvp);
	/*
	 * Truncate the directory that is being deleted.
	 */
	error = FUNC2(ip, (u_long)0, IO_SYNC, cnp->cn_cred);
	FUNC1(vp);

out:
	return (error);
}