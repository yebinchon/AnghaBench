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
struct vnode {int v_iflag; struct mount* v_mount; } ;
struct unionfs_node {struct vnode* un_uppervp; struct vnode* un_lowervp; } ;
struct unionfs_mount {struct vnode* um_rootvp; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int LK_CANRECURSE ; 
 int LK_EXCLUSIVE ; 
 int LK_INTERLOCK ; 
 int LK_NOWAIT ; 
 int LK_RELEASE ; 
 int LK_TYPE_MASK ; 
 int LK_UPGRADE ; 
 struct unionfs_mount* FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  MTX_DUPOK ; 
 struct vnode* NULLVP ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int VI_OWEINACT ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int FUNC5 (struct vnode*,int) ; 
 int FUNC6 (struct vnode*,int) ; 
 struct unionfs_node* FUNC7 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int FUNC9 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC13 (struct vnode*) ; 
 int FUNC14 (struct vop_lock1_args*) ; 

__attribute__((used)) static int
FUNC15(struct vop_lock1_args *ap)
{
	int		error;
	int		flags;
	int		revlock;
	int		interlock;
	int		uhold;
	struct mount   *mp;
	struct unionfs_mount *ump;
	struct unionfs_node *unp;
	struct vnode   *vp;
	struct vnode   *uvp;
	struct vnode   *lvp;

	FUNC0(ap->a_vp);

	error = 0;
	interlock = 1;
	uhold = 0;
	flags = ap->a_flags;
	vp = ap->a_vp;

	if (LK_RELEASE == (flags & LK_TYPE_MASK) || !(flags & LK_TYPE_MASK))
		return (FUNC6(vp, flags | LK_RELEASE));

	if ((flags & LK_INTERLOCK) == 0)
		FUNC2(vp);

	mp = vp->v_mount;
	if (mp == NULL)
		goto unionfs_lock_null_vnode;

	ump = FUNC1(mp);
	unp = FUNC7(vp);
	if (ump == NULL || unp == NULL)
		goto unionfs_lock_null_vnode;
	lvp = unp->un_lowervp;
	uvp = unp->un_uppervp;

	if ((revlock = FUNC9(vp, flags)) == 0)
		FUNC8("unknown lock type: 0x%x", flags & LK_TYPE_MASK);

	if ((vp->v_iflag & VI_OWEINACT) != 0)
		flags |= LK_NOWAIT;

	/*
	 * Sometimes, lower or upper is already exclusive locked.
	 * (ex. vfs_domount: mounted vnode is already locked.)
	 */
	if ((flags & LK_TYPE_MASK) == LK_EXCLUSIVE &&
	    vp == ump->um_rootvp)
		flags |= LK_CANRECURSE;

	if (lvp != NULLVP) {
		if (uvp != NULLVP && flags & LK_UPGRADE) {
			/* Share Lock is once released and a deadlock is avoided.  */
			FUNC13(uvp);
			uhold = 1;
			FUNC6(uvp, LK_RELEASE);
			unp = FUNC7(vp);
			if (unp == NULL) {
				/* vnode is released. */
				FUNC4(vp);
				FUNC6(lvp, LK_RELEASE);
				FUNC11(uvp);
				return (EBUSY);
			}
		}
		FUNC3(lvp, MTX_DUPOK);
		flags |= LK_INTERLOCK;
		FUNC12(lvp);

		FUNC4(vp);
		ap->a_flags &= ~LK_INTERLOCK;

		error = FUNC5(lvp, flags);

		FUNC2(vp);
		unp = FUNC7(vp);
		if (unp == NULL) {
			/* vnode is released. */
			FUNC4(vp);
			if (error == 0)
				FUNC6(lvp, LK_RELEASE);
			FUNC11(lvp);
			if (uhold != 0)
				FUNC11(uvp);
			return (FUNC14(ap));
		}
	}

	if (error == 0 && uvp != NULLVP) {
		if (uhold && flags & LK_UPGRADE) {
			flags &= ~LK_TYPE_MASK;
			flags |= LK_EXCLUSIVE;
		}
		FUNC3(uvp, MTX_DUPOK);
		flags |= LK_INTERLOCK;
		if (uhold == 0) {
			FUNC12(uvp);
			uhold = 1;
		}

		FUNC4(vp);
		ap->a_flags &= ~LK_INTERLOCK;

		error = FUNC5(uvp, flags);

		FUNC2(vp);
		unp = FUNC7(vp);
		if (unp == NULL) {
			/* vnode is released. */
			FUNC4(vp);
			if (error == 0)
				FUNC6(uvp, LK_RELEASE);
			FUNC11(uvp);
			if (lvp != NULLVP) {
				FUNC6(lvp, LK_RELEASE);
				FUNC11(lvp);
			}
			return (FUNC14(ap));
		}
		if (error != 0 && lvp != NULLVP) {
			/* rollback */
			FUNC4(vp);
			FUNC10(lvp, revlock);
			interlock = 0;
		}
	}

	if (interlock)
		FUNC4(vp);
	if (lvp != NULLVP)
		FUNC11(lvp);
	if (uhold != 0)
		FUNC11(uvp);

	return (error);

unionfs_lock_null_vnode:
	ap->a_flags |= LK_INTERLOCK;
	return (FUNC14(ap));
}