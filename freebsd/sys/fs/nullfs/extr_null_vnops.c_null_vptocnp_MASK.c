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
struct vop_vptocnp_args {int /*<<< orphan*/  a_buflen; int /*<<< orphan*/  a_buf; struct ucred* a_cred; struct vnode** a_vpp; struct vnode* a_vp; } ;
struct vnode {struct mount* v_mount; } ;
struct ucred {int dummy; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 struct vnode* FUNC0 (struct vnode*) ; 
 int FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mount*,struct vnode*,struct vnode**) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int /*<<< orphan*/  FUNC6 (struct mount*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 
 int FUNC8 (struct vnode*,int) ; 
 int FUNC9 (struct vnode**,struct ucred*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 

__attribute__((used)) static int
FUNC12(struct vop_vptocnp_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct vnode **dvp = ap->a_vpp;
	struct vnode *lvp, *ldvp;
	struct ucred *cred = ap->a_cred;
	struct mount *mp;
	int error, locked;

	locked = FUNC1(vp);
	lvp = FUNC0(vp);
	FUNC7(lvp);
	mp = vp->v_mount;
	FUNC5(mp);
	FUNC2(vp, 0); /* vp is held by vn_vptocnp_locked that called us */
	ldvp = lvp;
	FUNC10(lvp);
	error = FUNC9(&ldvp, cred, ap->a_buf, ap->a_buflen);
	FUNC4(lvp);
	if (error != 0) {
		FUNC8(vp, locked | LK_RETRY);
		FUNC6(mp);
		return (ENOENT);
	}

	error = FUNC8(ldvp, LK_SHARED);
	if (error != 0) {
		FUNC11(ldvp);
		FUNC8(vp, locked | LK_RETRY);
		FUNC6(mp);
		return (ENOENT);
	}
	error = FUNC3(mp, ldvp, dvp);
	if (error == 0) {
#ifdef DIAGNOSTIC
		NULLVPTOLOWERVP(*dvp);
#endif
		FUNC2(*dvp, 0); /* keep reference on *dvp */
	}
	FUNC8(vp, locked | LK_RETRY);
	FUNC6(mp);
	return (error);
}