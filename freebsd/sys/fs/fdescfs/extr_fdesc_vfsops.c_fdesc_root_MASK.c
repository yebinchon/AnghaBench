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
struct mount {int dummy; } ;
struct TYPE_2__ {struct vnode* f_root; } ;

/* Variables and functions */
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 TYPE_1__* FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct mount *mp, int flags, struct vnode **vpp)
{
	struct vnode *vp;

	/*
	 * Return locked reference to root.
	 */
	vp = FUNC0(mp)->f_root;
	FUNC1(vp, LK_EXCLUSIVE | LK_RETRY, curthread);
	*vpp = vp;
	return (0);
}