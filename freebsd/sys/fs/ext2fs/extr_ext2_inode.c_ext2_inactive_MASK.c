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
struct vop_inactive_args {struct thread* a_td; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct inode {scalar_t__ i_mode; scalar_t__ i_nlink; int i_flag; int /*<<< orphan*/  i_number; scalar_t__ i_rdev; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int IN_ACCESS ; 
 int IN_CHANGE ; 
 int IN_E4EXTENTS ; 
 int IN_MODIFIED ; 
 int IN_UPDATE ; 
 int /*<<< orphan*/  NOCRED ; 
 struct inode* FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 

int
FUNC6(struct vop_inactive_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct inode *ip = FUNC0(vp);
	struct thread *td = ap->a_td;
	int mode, error = 0;

	/*
	 * Ignore inodes related to stale file handles.
	 */
	if (ip->i_mode == 0)
		goto out;
	if (ip->i_nlink <= 0) {
		FUNC1(ip);
		error = FUNC2(vp, (off_t)0, 0, NOCRED, td);
		if (!(ip->i_flag & IN_E4EXTENTS))
			ip->i_rdev = 0;
		mode = ip->i_mode;
		ip->i_mode = 0;
		ip->i_flag |= IN_CHANGE | IN_UPDATE;
		FUNC4(vp, ip->i_number, mode);
	}
	if (ip->i_flag & (IN_ACCESS | IN_CHANGE | IN_MODIFIED | IN_UPDATE))
		FUNC3(vp, 0);
out:
	/*
	 * If we are done with the inode, reclaim it
	 * so that it can be reused immediately.
	 */
	if (ip->i_mode == 0)
		FUNC5(vp);
	return (error);
}