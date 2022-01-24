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
struct vnode {scalar_t__ v_usecount; int v_iflag; } ;
struct null_node {int null_flags; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int NULLV_DROP ; 
 int NULLV_NOUNLOCK ; 
 int VI_DOOMED ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 struct null_node* FUNC3 (struct vnode*) ; 
 struct vnode* FUNC4 (struct mount*,struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 

__attribute__((used)) static void
FUNC8(struct mount *mp, struct vnode *lowervp)
{
	struct vnode *vp;
	struct null_node *xp;

	vp = FUNC4(mp, lowervp);
	if (vp == NULL)
		return;
	xp = FUNC3(vp);
	xp->null_flags |= NULLV_DROP | NULLV_NOUNLOCK;
	FUNC6(vp);
	FUNC7(vp);

	if (vp->v_usecount == 0) {
		/*
		 * If vunref() dropped the last use reference on the
		 * nullfs vnode, it must be reclaimed, and its lock
		 * was split from the lower vnode lock.  Need to do
		 * extra unlock before allowing the final vdrop() to
		 * free the vnode.
		 */
		FUNC1((vp->v_iflag & VI_DOOMED) != 0,
		    ("not reclaimed nullfs vnode %p", vp));
		FUNC2(vp, 0);
	} else {
		/*
		 * Otherwise, the nullfs vnode still shares the lock
		 * with the lower vnode, and must not be unlocked.
		 * Also clear the NULLV_NOUNLOCK, the flag is not
		 * relevant for future reclamations.
		 */
		FUNC0(vp, "unlink_lowervp");
		FUNC1((vp->v_iflag & VI_DOOMED) == 0,
		    ("reclaimed nullfs vnode %p", vp));
		xp->null_flags &= ~NULLV_NOUNLOCK;
	}
	FUNC5(vp);
}