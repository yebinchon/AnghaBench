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
typedef  int /*<<< orphan*/  u_quad_t ;
struct vop_lock1_args {int a_flags; struct vnode* a_vp; } ;
struct vnode {int /*<<< orphan*/ * v_op; TYPE_1__* v_vnlock; } ;
struct nfsnode {int n_flag; int /*<<< orphan*/  n_size; } ;
struct TYPE_2__ {scalar_t__ lk_recurse; } ;

/* Variables and functions */
 int EBUSY ; 
 int LK_CANRECURSE ; 
 int LK_DOWNGRADE ; 
 int LK_EATTR_MASK ; 
 int LK_EXCLUSIVE ; 
 int LK_INIT_MASK ; 
 int LK_INTERLOCK ; 
 int LK_NOWAIT ; 
 int LK_SHARED ; 
 int LK_TRYUPGRADE ; 
 int LK_TYPE_MASK ; 
 int LK_UPGRADE ; 
 int /*<<< orphan*/  FUNC0 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 int NVNSETSZSKIP ; 
 int FUNC2 (int /*<<< orphan*/ *,struct vop_lock1_args*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 struct nfsnode* FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  default_vnodeops ; 
 int /*<<< orphan*/  newnfs_vnodeops ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct vop_lock1_args *ap)
{
	struct vnode *vp;
	struct nfsnode *np;
	u_quad_t nsize;
	int error, lktype;
	bool onfault;

	vp = ap->a_vp;
	lktype = ap->a_flags & LK_TYPE_MASK;
	error = FUNC2(&default_vnodeops, ap);
	if (error != 0 || vp->v_op != &newnfs_vnodeops)
		return (error);
	np = FUNC4(vp);
	FUNC0(np);
	if ((np->n_flag & NVNSETSZSKIP) == 0 || (lktype != LK_SHARED &&
	    lktype != LK_EXCLUSIVE && lktype != LK_UPGRADE &&
	    lktype != LK_TRYUPGRADE)) {
		FUNC1(np);
		return (0);
	}
	onfault = (ap->a_flags & LK_EATTR_MASK) == LK_NOWAIT &&
	    (ap->a_flags & LK_INIT_MASK) == LK_CANRECURSE &&
	    (lktype == LK_SHARED || lktype == LK_EXCLUSIVE);
	if (onfault && vp->v_vnlock->lk_recurse == 0) {
		/*
		 * Force retry in vm_fault(), to make the lock request
		 * sleepable, which allows us to piggy-back the
		 * sleepable call to vnode_pager_setsize().
		 */
		FUNC1(np);
		FUNC3(vp, 0);
		return (EBUSY);
	}
	if ((ap->a_flags & LK_NOWAIT) != 0 ||
	    (lktype == LK_SHARED && vp->v_vnlock->lk_recurse > 0)) {
		FUNC1(np);
		return (0);
	}
	if (lktype == LK_SHARED) {
		FUNC1(np);
		FUNC3(vp, 0);
		ap->a_flags &= ~(LK_TYPE_MASK | LK_INTERLOCK);
		ap->a_flags |= LK_EXCLUSIVE;
		error = FUNC2(&default_vnodeops, ap);
		if (error != 0 || vp->v_op != &newnfs_vnodeops)
			return (error);
		FUNC0(np);
		if ((np->n_flag & NVNSETSZSKIP) == 0) {
			FUNC1(np);
			goto downgrade;
		}
	}
	np->n_flag &= ~NVNSETSZSKIP;
	nsize = np->n_size;
	FUNC1(np);
	FUNC5(vp, nsize);
downgrade:
	if (lktype == LK_SHARED) {
		ap->a_flags &= ~(LK_TYPE_MASK | LK_INTERLOCK);
		ap->a_flags |= LK_DOWNGRADE;
		(void)FUNC2(&default_vnodeops, ap);
	}
	return (0);
}