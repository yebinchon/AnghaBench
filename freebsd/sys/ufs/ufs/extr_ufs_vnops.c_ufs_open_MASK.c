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
struct vop_open_args {int a_mode; int /*<<< orphan*/  a_td; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;
struct inode {int i_flags; } ;

/* Variables and functions */
 int APPEND ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,int /*<<< orphan*/ ) ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int FWRITE ; 
 int O_APPEND ; 
 scalar_t__ VBLK ; 
 scalar_t__ VCHR ; 
 struct inode* FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  i_size ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct vop_open_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct inode *ip;

	if (vp->v_type == VCHR || vp->v_type == VBLK)
		return (EOPNOTSUPP);

	ip = FUNC1(vp);
	/*
	 * Files marked append-only must be opened for appending.
	 */
	if ((ip->i_flags & APPEND) &&
	    (ap->a_mode & (FWRITE | O_APPEND)) == FWRITE)
		return (EPERM);
	FUNC2(vp, FUNC0(ip, i_size), ap->a_td);
	return (0);
}