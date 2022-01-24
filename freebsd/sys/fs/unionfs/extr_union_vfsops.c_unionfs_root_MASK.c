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
struct unionfs_mount {struct vnode* um_rootvp; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int LK_TYPE_MASK ; 
 struct unionfs_mount* FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 

__attribute__((used)) static int
FUNC5(struct mount *mp, int flags, struct vnode **vpp)
{
	struct unionfs_mount *ump;
	struct vnode   *vp;

	ump = FUNC0(mp);
	vp = ump->um_rootvp;

	FUNC1("unionfs_root: rootvp=%p locked=%x\n",
	    vp, FUNC2(vp));

	FUNC4(vp);
	if (flags & LK_TYPE_MASK)
		FUNC3(vp, flags);

	*vpp = vp;

	return (0);
}