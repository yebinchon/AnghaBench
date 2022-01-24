#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vop_setextattr_args {int /*<<< orphan*/  a_uio; int /*<<< orphan*/  a_name; int /*<<< orphan*/  a_attrnamespace; TYPE_2__* a_vp; struct thread* a_td; struct ucred* a_cred; } ;
struct vnode {scalar_t__ v_type; } ;
struct unionfs_node {int un_flag; struct vnode* un_uppervp; struct vnode* un_lowervp; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_5__ {TYPE_1__* v_mount; } ;
struct TYPE_4__ {int mnt_flag; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int MNT_RDONLY ; 
 struct vnode* NULLVP ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int UNIONFS_OPENEXTL ; 
 int UNIONFS_OPENEXTU ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ,struct ucred*,struct thread*) ; 
 int FUNC3 (struct vnode*,struct ucred*,struct thread*) ; 
 int FUNC4 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucred*,struct thread*) ; 
 scalar_t__ VREG ; 
 struct unionfs_node* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct unionfs_node*,int,struct ucred*,struct thread*) ; 

__attribute__((used)) static int
FUNC8(struct vop_setextattr_args *ap)
{
	int		error;
	struct unionfs_node *unp;
	struct vnode   *uvp;
	struct vnode   *lvp;
	struct vnode   *ovp;
	struct ucred   *cred;
	struct thread  *td;

	FUNC0(ap->a_vp);

	error = EROFS;
	unp = FUNC5(ap->a_vp);
	uvp = unp->un_uppervp;
	lvp = unp->un_lowervp;
	ovp = NULLVP;
	cred = ap->a_cred;
	td = ap->a_td;

	FUNC1("unionfs_setextattr: enter (un_flag=%x)\n", unp->un_flag);

	if (ap->a_vp->v_mount->mnt_flag & MNT_RDONLY)
		return (EROFS);

	if (unp->un_flag & UNIONFS_OPENEXTU)
		ovp = unp->un_uppervp;
	else if (unp->un_flag & UNIONFS_OPENEXTL)
		ovp = unp->un_lowervp;

	if (ovp == NULLVP)
		return (EOPNOTSUPP);

	if (ovp == lvp && lvp->v_type == VREG) {
		FUNC2(lvp, 0, cred, td);
		if (uvp == NULLVP &&
		    (error = FUNC7(unp, 1, cred, td)) != 0) {
unionfs_setextattr_reopen:
			if ((unp->un_flag & UNIONFS_OPENEXTL) &&
			    FUNC3(lvp, cred, td)) {
#ifdef DIAGNOSTIC
				panic("unionfs: VOP_OPENEXTATTR failed");
#endif
				unp->un_flag &= ~UNIONFS_OPENEXTL;
			}
			goto unionfs_setextattr_abort;
		}
		uvp = unp->un_uppervp;
		if ((error = FUNC3(uvp, cred, td)) != 0)
			goto unionfs_setextattr_reopen;
		unp->un_flag &= ~UNIONFS_OPENEXTL;
		unp->un_flag |= UNIONFS_OPENEXTU;
		ovp = uvp;
	}

	if (ovp == uvp)
		error = FUNC4(ovp, ap->a_attrnamespace, ap->a_name,
		    ap->a_uio, cred, td);

unionfs_setextattr_abort:
	FUNC1("unionfs_setextattr: leave (%d)\n", error);

	return (error);
}