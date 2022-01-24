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
struct vop_remove_args {int /*<<< orphan*/  a_cnp; struct vnode* a_dvp; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct inode {int i_flags; int /*<<< orphan*/  i_flag; int /*<<< orphan*/  i_nlink; } ;

/* Variables and functions */
 int APPEND ; 
 int EPERM ; 
 int IMMUTABLE ; 
 int /*<<< orphan*/  IN_CHANGE ; 
 int NOUNLINK ; 
 struct inode* FUNC0 (struct vnode*) ; 
 int FUNC1 (struct vnode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct vop_remove_args *ap)
{
	struct inode *ip;
	struct vnode *vp = ap->a_vp;
	struct vnode *dvp = ap->a_dvp;
	int error;

	ip = FUNC0(vp);
	if ((ip->i_flags & (NOUNLINK | IMMUTABLE | APPEND)) ||
	    (FUNC0(dvp)->i_flags & APPEND)) {
		error = EPERM;
		goto out;
	}
	error = FUNC1(dvp, ap->a_cnp);
	if (error == 0) {
		ip->i_nlink--;
		ip->i_flag |= IN_CHANGE;
	}
out:
	return (error);
}