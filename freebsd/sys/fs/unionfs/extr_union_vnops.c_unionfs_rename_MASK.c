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
struct vop_rename_args {struct componentname* a_tcnp; struct vnode* a_tvp; struct vnode* a_tdvp; struct componentname* a_fcnp; struct vnode* a_fvp; struct vnode* a_fdvp; } ;
struct vnode {scalar_t__ v_mount; int v_type; int /*<<< orphan*/ * v_op; } ;
struct unionfs_node {struct vnode* un_lowervp; struct vnode* un_uppervp; } ;
struct unionfs_mount {int dummy; } ;
struct thread {int dummy; } ;
struct componentname {int cn_flags; int /*<<< orphan*/  cn_cred; } ;

/* Variables and functions */
 int DOWHITEOUT ; 
 int EINVAL ; 
 int ENODEV ; 
 int EXDEV ; 
 int HASBUF ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int LK_EXCLUSIVE ; 
 int /*<<< orphan*/  LK_RELEASE ; 
 int LK_RETRY ; 
 struct unionfs_mount* FUNC1 (scalar_t__) ; 
 struct vnode* NULLVP ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
#define  VDIR 129 
 int FUNC3 (struct vnode*,struct vnode*,struct componentname*,struct vnode*,struct vnode*,struct componentname*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,int /*<<< orphan*/ ) ; 
#define  VREG 128 
 struct unionfs_node* FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (struct unionfs_node*,int,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC9 (struct unionfs_mount*,struct vnode*,struct unionfs_node*,struct componentname*,struct thread*) ; 
 int FUNC10 (struct vnode*,struct componentname*,struct thread*) ; 
 int FUNC11 (struct vnode*,struct componentname*,struct thread*) ; 
 int /*<<< orphan*/  unionfs_vnodeops ; 
 int FUNC12 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC14 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC15 (struct vnode*) ; 

__attribute__((used)) static int
FUNC16(struct vop_rename_args *ap)
{
	int		error;
	struct vnode   *fdvp;
	struct vnode   *fvp;
	struct componentname *fcnp;
	struct vnode   *tdvp;
	struct vnode   *tvp;
	struct componentname *tcnp;
	struct vnode   *ltdvp;
	struct vnode   *ltvp;
	struct thread  *td;

	/* rename target vnodes */
	struct vnode   *rfdvp;
	struct vnode   *rfvp;
	struct vnode   *rtdvp;
	struct vnode   *rtvp;

	int		needrelookup;
	struct unionfs_mount *ump;
	struct unionfs_node *unp;

	FUNC2("unionfs_rename: enter\n");

	error = 0;
	fdvp = ap->a_fdvp;
	fvp = ap->a_fvp;
	fcnp = ap->a_fcnp;
	tdvp = ap->a_tdvp;
	tvp = ap->a_tvp;
	tcnp = ap->a_tcnp;
	ltdvp = NULLVP;
	ltvp = NULLVP;
	td = curthread;
	rfdvp = fdvp;
	rfvp = fvp;
	rtdvp = tdvp;
	rtvp = tvp;
	needrelookup = 0;

#ifdef DIAGNOSTIC
	if (!(fcnp->cn_flags & HASBUF) || !(tcnp->cn_flags & HASBUF))
		panic("unionfs_rename: no name");
#endif

	/* check for cross device rename */
	if (fvp->v_mount != tdvp->v_mount ||
	    (tvp != NULLVP && fvp->v_mount != tvp->v_mount)) {
		if (fvp->v_op != &unionfs_vnodeops)
			error = ENODEV;
		else
			error = EXDEV;
		goto unionfs_rename_abort;
	}

	/* Renaming a file to itself has no effect. */
	if (fvp == tvp)
		goto unionfs_rename_abort;

	/*
	 * from/to vnode is unionfs node.
	 */

	FUNC0(fdvp);
	FUNC0(fvp);
	FUNC0(tdvp);
	if (tvp != NULLVP)
		FUNC0(tvp);

	unp = FUNC5(fdvp);
#ifdef UNIONFS_IDBG_RENAME
	UNIONFS_INTERNAL_DEBUG("fdvp=%p, ufdvp=%p, lfdvp=%p\n", fdvp, unp->un_uppervp, unp->un_lowervp);
#endif
	if (unp->un_uppervp == NULLVP) {
		error = ENODEV;
		goto unionfs_rename_abort;
	}
	rfdvp = unp->un_uppervp;
	FUNC14(rfdvp);

	unp = FUNC5(fvp);
#ifdef UNIONFS_IDBG_RENAME
	UNIONFS_INTERNAL_DEBUG("fvp=%p, ufvp=%p, lfvp=%p\n", fvp, unp->un_uppervp, unp->un_lowervp);
#endif
	ump = FUNC1(fvp->v_mount);
	if (unp->un_uppervp == NULLVP) {
		switch (fvp->v_type) {
		case VREG:
			if ((error = FUNC12(fvp, LK_EXCLUSIVE)) != 0)
				goto unionfs_rename_abort;
			error = FUNC8(unp, 1, fcnp->cn_cred, td);
			FUNC4(fvp, LK_RELEASE);
			if (error != 0)
				goto unionfs_rename_abort;
			break;
		case VDIR:
			if ((error = FUNC12(fvp, LK_EXCLUSIVE)) != 0)
				goto unionfs_rename_abort;
			error = FUNC9(ump, rfdvp, unp, fcnp, td);
			FUNC4(fvp, LK_RELEASE);
			if (error != 0)
				goto unionfs_rename_abort;
			break;
		default:
			error = ENODEV;
			goto unionfs_rename_abort;
		}

		needrelookup = 1;
	}

	if (unp->un_lowervp != NULLVP)
		fcnp->cn_flags |= DOWHITEOUT;
	rfvp = unp->un_uppervp;
	FUNC14(rfvp);

	unp = FUNC5(tdvp);
#ifdef UNIONFS_IDBG_RENAME
	UNIONFS_INTERNAL_DEBUG("tdvp=%p, utdvp=%p, ltdvp=%p\n", tdvp, unp->un_uppervp, unp->un_lowervp);
#endif
	if (unp->un_uppervp == NULLVP) {
		error = ENODEV;
		goto unionfs_rename_abort;
	}
	rtdvp = unp->un_uppervp;
	ltdvp = unp->un_lowervp;
	FUNC14(rtdvp);

	if (tdvp == tvp) {
		rtvp = rtdvp;
		FUNC14(rtvp);
	} else if (tvp != NULLVP) {
		unp = FUNC5(tvp);
#ifdef UNIONFS_IDBG_RENAME
		UNIONFS_INTERNAL_DEBUG("tvp=%p, utvp=%p, ltvp=%p\n", tvp, unp->un_uppervp, unp->un_lowervp);
#endif
		if (unp->un_uppervp == NULLVP)
			rtvp = NULLVP;
		else {
			if (tvp->v_type == VDIR) {
				error = EINVAL;
				goto unionfs_rename_abort;
			}
			rtvp = unp->un_uppervp;
			ltvp = unp->un_lowervp;
			FUNC14(rtvp);
		}
	}

	if (rfvp == rtvp)
		goto unionfs_rename_abort;

	if (needrelookup != 0) {
		if ((error = FUNC12(fdvp, LK_EXCLUSIVE)) != 0)
			goto unionfs_rename_abort;
		error = FUNC10(fdvp, fcnp, td);
		FUNC4(fdvp, LK_RELEASE);
		if (error != 0)
			goto unionfs_rename_abort;

		/* Locke of tvp is canceled in order to avoid recursive lock. */
		if (tvp != NULLVP && tvp != tdvp)
			FUNC4(tvp, LK_RELEASE);
		error = FUNC11(tdvp, tcnp, td);
		if (tvp != NULLVP && tvp != tdvp)
			FUNC12(tvp, LK_EXCLUSIVE | LK_RETRY);
		if (error != 0)
			goto unionfs_rename_abort;
	}

	error = FUNC3(rfdvp, rfvp, fcnp, rtdvp, rtvp, tcnp);

	if (error == 0) {
		if (rtvp != NULLVP && rtvp->v_type == VDIR)
			FUNC6(tdvp);
		if (fvp->v_type == VDIR && fdvp != tdvp)
			FUNC6(fdvp);
	}

	if (ltdvp != NULLVP)
		FUNC4(ltdvp, LK_RELEASE);
	if (tdvp != rtdvp)
		FUNC15(tdvp);
	if (ltvp != NULLVP)
		FUNC4(ltvp, LK_RELEASE);
	if (tvp != rtvp && tvp != NULLVP) {
		if (rtvp == NULLVP)
			FUNC13(tvp);
		else
			FUNC15(tvp);
	}
	if (fdvp != rfdvp)
		FUNC15(fdvp);
	if (fvp != rfvp)
		FUNC15(fvp);

	FUNC2("unionfs_rename: leave (%d)\n", error);

	return (error);

unionfs_rename_abort:
	FUNC13(tdvp);
	if (tdvp != rtdvp)
		FUNC15(rtdvp);
	if (tvp != NULLVP) {
		if (tdvp != tvp)
			FUNC13(tvp);
		else
			FUNC15(tvp);
	}
	if (tvp != rtvp && rtvp != NULLVP)
		FUNC15(rtvp);
	if (fdvp != rfdvp)
		FUNC15(rfdvp);
	if (fvp != rfvp)
		FUNC15(rfvp);
	FUNC15(fdvp);
	FUNC15(fvp);

	FUNC2("unionfs_rename: leave (%d)\n", error);

	return (error);
}