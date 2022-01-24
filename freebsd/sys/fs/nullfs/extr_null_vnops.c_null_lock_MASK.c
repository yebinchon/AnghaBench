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
struct vop_lock1_args {int a_flags; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct null_node {int dummy; } ;

/* Variables and functions */
#define  LK_EXCLUSIVE 130 
 int LK_INTERLOCK ; 
#define  LK_SHARED 129 
 int LK_TYPE_MASK ; 
#define  LK_UPGRADE 128 
 struct vnode* FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int FUNC3 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,int /*<<< orphan*/ ) ; 
 struct null_node* FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int const) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*) ; 
 int FUNC9 (struct vop_lock1_args*) ; 

__attribute__((used)) static int
FUNC10(struct vop_lock1_args *ap)
{
	struct vnode *vp = ap->a_vp;
	int flags;
	struct null_node *nn;
	struct vnode *lvp;
	int error;

	if ((ap->a_flags & LK_INTERLOCK) == 0)
		FUNC1(vp);
	else
		ap->a_flags &= ~LK_INTERLOCK;
	flags = ap->a_flags;
	nn = FUNC5(vp);
	/*
	 * If we're still active we must ask the lower layer to
	 * lock as ffs has special lock considerations in its
	 * vop lock.
	 */
	if (nn != NULL && (lvp = FUNC0(vp)) != NULL) {
		/*
		 * We have to hold the vnode here to solve a potential
		 * reclaim race.  If we're forcibly vgone'd while we
		 * still have refs, a thread could be sleeping inside
		 * the lowervp's vop_lock routine.  When we vgone we will
		 * drop our last ref to the lowervp, which would allow it
		 * to be reclaimed.  The lowervp could then be recycled,
		 * in which case it is not legal to be sleeping in its VOP.
		 * We prevent it from being recycled by holding the vnode
		 * here.
		 */
		FUNC8(lvp);
		FUNC2(vp);
		error = FUNC3(lvp, flags);

		/*
		 * We might have slept to get the lock and someone might have
		 * clean our vnode already, switching vnode lock from one in
		 * lowervp to v_lock in our own vnode structure.  Handle this
		 * case by reacquiring correct lock in requested mode.
		 */
		if (FUNC5(vp) == NULL && error == 0) {
			ap->a_flags &= ~LK_TYPE_MASK;
			switch (flags & LK_TYPE_MASK) {
			case LK_SHARED:
				ap->a_flags |= LK_SHARED;
				break;
			case LK_UPGRADE:
			case LK_EXCLUSIVE:
				ap->a_flags |= LK_EXCLUSIVE;
				break;
			default:
				FUNC6("Unsupported lock request %d\n",
				    ap->a_flags);
			}
			FUNC4(lvp, 0);
			error = FUNC9(ap);
		}
		FUNC7(lvp);
	} else {
		FUNC2(vp);
		error = FUNC9(ap);
	}

	return (error);
}