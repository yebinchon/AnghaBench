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
struct vop_link_args {struct componentname* a_cnp; struct vnode* a_tdvp; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct inode {int i_flags; int /*<<< orphan*/  i_flag; scalar_t__ i_nlink; } ;
struct componentname {int cn_flags; } ;
typedef  scalar_t__ nlink_t ;

/* Variables and functions */
 int APPEND ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int EMLINK ; 
 int EPERM ; 
 scalar_t__ EXT4_LINK_MAX ; 
 int HASBUF ; 
 int IMMUTABLE ; 
 int /*<<< orphan*/  IN_CHANGE ; 
 struct inode* FUNC1 (struct vnode*) ; 
 int FUNC2 (struct inode*,struct vnode*,struct componentname*) ; 
 int FUNC3 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(struct vop_link_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct vnode *tdvp = ap->a_tdvp;
	struct componentname *cnp = ap->a_cnp;
	struct inode *ip;
	int error;

#ifdef INVARIANTS
	if ((cnp->cn_flags & HASBUF) == 0)
		panic("ext2_link: no name");
#endif
	ip = FUNC1(vp);
	if ((nlink_t)ip->i_nlink >= EXT4_LINK_MAX) {
		error = EMLINK;
		goto out;
	}
	if (ip->i_flags & (IMMUTABLE | APPEND)) {
		error = EPERM;
		goto out;
	}
	ip->i_nlink++;
	ip->i_flag |= IN_CHANGE;
	error = FUNC3(vp, !FUNC0(vp));
	if (!error)
		error = FUNC2(ip, tdvp, cnp);
	if (error) {
		ip->i_nlink--;
		ip->i_flag |= IN_CHANGE;
	}
out:
	return (error);
}