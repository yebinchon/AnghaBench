#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
struct vop_cachedlookup_args {struct vnode** a_vpp; struct vnode* a_dvp; struct componentname* a_cnp; } ;
struct vnode {scalar_t__ v_type; TYPE_1__* v_mount; } ;
struct vattr {int va_flags; } ;
struct unionfs_node {struct vnode* un_dvp; struct vnode* un_lowervp; struct vnode* un_uppervp; } ;
struct thread {int dummy; } ;
struct componentname {scalar_t__ cn_nameiop; scalar_t__ cn_flags; char* cn_nameptr; int cn_lkflags; int cn_namelen; int /*<<< orphan*/  cn_cred; } ;
struct TYPE_3__ {int mnt_flag; } ;

/* Variables and functions */
 scalar_t__ DELETE ; 
 scalar_t__ DOWHITEOUT ; 
 int EJUSTRETURN ; 
 int ENOENT ; 
 int ENOTDIR ; 
 int EROFS ; 
 scalar_t__ ISDOTDOT ; 
 scalar_t__ ISLASTCN ; 
 int ISWHITEOUT ; 
 int LK_EXCLUSIVE ; 
 int /*<<< orphan*/  LK_RELEASE ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int LK_TYPE_MASK ; 
 scalar_t__ LOOKUP ; 
 scalar_t__ MAKEENTRY ; 
 int MNT_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct vnode* NULLVP ; 
 int OPAQUE ; 
 scalar_t__ RENAME ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 scalar_t__ VDIR ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,struct vattr*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vnode*) ; 
 int FUNC5 (struct vnode*,struct vnode**,struct componentname*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,int /*<<< orphan*/ ) ; 
 scalar_t__ VSOCK ; 
 struct unionfs_node* FUNC7 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,struct vnode*,struct componentname*) ; 
 struct thread* curthread ; 
 int FUNC9 (int /*<<< orphan*/ ,struct vnode*,struct unionfs_node*,struct componentname*,struct thread*) ; 
 int FUNC10 (TYPE_1__*,struct vnode*,struct vnode*,struct vnode*,struct vnode**,struct componentname*,struct thread*) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC13 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC14 (struct vnode*) ; 

__attribute__((used)) static int
FUNC15(struct vop_cachedlookup_args *ap)
{
	int		iswhiteout;
	int		lockflag;
	int		error , uerror, lerror;
	u_long		nameiop;
	u_long		cnflags, cnflagsbk;
	struct unionfs_node *dunp;
	struct vnode   *dvp, *udvp, *ldvp, *vp, *uvp, *lvp, *dtmpvp;
	struct vattr	va;
	struct componentname *cnp;
	struct thread  *td;

	iswhiteout = 0;
	lockflag = 0;
	error = uerror = lerror = ENOENT;
	cnp = ap->a_cnp;
	nameiop = cnp->cn_nameiop;
	cnflags = cnp->cn_flags;
	dvp = ap->a_dvp;
	dunp = FUNC7(dvp);
	udvp = dunp->un_uppervp;
	ldvp = dunp->un_lowervp;
	vp = uvp = lvp = NULLVP;
	td = curthread;
	*(ap->a_vpp) = NULLVP;

	FUNC2("unionfs_lookup: enter: nameiop=%ld, flags=%lx, path=%s\n", nameiop, cnflags, cnp->cn_nameptr);

	if (dvp->v_type != VDIR)
		return (ENOTDIR);

	/*
	 * If read-only and op is not LOOKUP, will return EROFS.
	 */
	if ((cnflags & ISLASTCN) &&
	    (dvp->v_mount->mnt_flag & MNT_RDONLY) &&
	    LOOKUP != nameiop)
		return (EROFS);

	/*
	 * lookup dotdot
	 */
	if (cnflags & ISDOTDOT) {
		if (LOOKUP != nameiop && udvp == NULLVP)
			return (EROFS);

		if (udvp != NULLVP) {
			dtmpvp = udvp;
			if (ldvp != NULLVP)
				FUNC6(ldvp, LK_RELEASE);
		}
		else
			dtmpvp = ldvp;

		error = FUNC5(dtmpvp, &vp, cnp);

		if (dtmpvp == udvp && ldvp != NULLVP) {
			FUNC6(udvp, LK_RELEASE);
			FUNC11(dvp, LK_EXCLUSIVE | LK_RETRY);
		}

		if (error == 0) {
			/*
			 * Exchange lock and reference from vp to
			 * dunp->un_dvp. vp is upper/lower vnode, but it
			 * will need to return the unionfs vnode.
			 */
			if (nameiop == DELETE  || nameiop == RENAME ||
			    (cnp->cn_lkflags & LK_TYPE_MASK))
				FUNC6(vp, LK_RELEASE);
			FUNC14(vp);

			FUNC6(dvp, LK_RELEASE);
			*(ap->a_vpp) = dunp->un_dvp;
			FUNC13(dunp->un_dvp);

			if (nameiop == DELETE || nameiop == RENAME)
				FUNC11(dunp->un_dvp, LK_EXCLUSIVE | LK_RETRY);
			else if (cnp->cn_lkflags & LK_TYPE_MASK)
				FUNC11(dunp->un_dvp, cnp->cn_lkflags |
				    LK_RETRY);

			FUNC11(dvp, LK_EXCLUSIVE | LK_RETRY);
		} else if (error == ENOENT && (cnflags & MAKEENTRY) != 0)
			FUNC8(dvp, NULLVP, cnp);

		FUNC2("unionfs_lookup: leave (%d)\n", error);

		return (error);
	}

	/*
	 * lookup upper layer
	 */
	if (udvp != NULLVP) {
		uerror = FUNC5(udvp, &uvp, cnp);

		if (uerror == 0) {
			if (udvp == uvp) {	/* is dot */
				FUNC14(uvp);
				*(ap->a_vpp) = dvp;
				FUNC13(dvp);

				FUNC2("unionfs_lookup: leave (%d)\n", uerror);

				return (uerror);
			}
			if (nameiop == DELETE || nameiop == RENAME ||
			    (cnp->cn_lkflags & LK_TYPE_MASK))
				FUNC6(uvp, LK_RELEASE);
		}

		/* check whiteout */
		if (uerror == ENOENT || uerror == EJUSTRETURN)
			if (cnp->cn_flags & ISWHITEOUT)
				iswhiteout = 1;	/* don't lookup lower */
		if (iswhiteout == 0 && ldvp != NULLVP)
			if (!FUNC3(udvp, &va, cnp->cn_cred) &&
			    (va.va_flags & OPAQUE))
				iswhiteout = 1;	/* don't lookup lower */
#if 0
		UNIONFS_INTERNAL_DEBUG("unionfs_lookup: debug: whiteout=%d, path=%s\n", iswhiteout, cnp->cn_nameptr);
#endif
	}

	/*
	 * lookup lower layer
	 */
	if (ldvp != NULLVP && !(cnflags & DOWHITEOUT) && iswhiteout == 0) {
		/* always op is LOOKUP */
		cnp->cn_nameiop = LOOKUP;
		cnflagsbk = cnp->cn_flags;
		cnp->cn_flags = cnflags;

		lerror = FUNC5(ldvp, &lvp, cnp);

		cnp->cn_nameiop = nameiop;
		if (udvp != NULLVP && (uerror == 0 || uerror == EJUSTRETURN))
			cnp->cn_flags = cnflagsbk;

		if (lerror == 0) {
			if (ldvp == lvp) {	/* is dot */
				if (uvp != NULLVP)
					FUNC14(uvp);	/* no need? */
				FUNC14(lvp);
				*(ap->a_vpp) = dvp;
				FUNC13(dvp);

				FUNC2("unionfs_lookup: leave (%d)\n", lerror);

				return (lerror);
			}
			if (cnp->cn_lkflags & LK_TYPE_MASK)
				FUNC6(lvp, LK_RELEASE);
		}
	}

	/*
	 * check lookup result
	 */
	if (uvp == NULLVP && lvp == NULLVP) {
		FUNC2("unionfs_lookup: leave (%d)\n",
		    (udvp != NULLVP ? uerror : lerror));
		return (udvp != NULLVP ? uerror : lerror);
	}

	/*
	 * check vnode type
	 */
	if (uvp != NULLVP && lvp != NULLVP && uvp->v_type != lvp->v_type) {
		FUNC14(lvp);
		lvp = NULLVP;
	}

	/*
	 * check shadow dir
	 */
	if (uerror != 0 && uerror != EJUSTRETURN && udvp != NULLVP &&
	    lerror == 0 && lvp != NULLVP && lvp->v_type == VDIR &&
	    !(dvp->v_mount->mnt_flag & MNT_RDONLY) &&
	    (1 < cnp->cn_namelen || '.' != *(cnp->cn_nameptr))) {
		/* get unionfs vnode in order to create a new shadow dir. */
		error = FUNC10(dvp->v_mount, NULLVP, lvp, dvp, &vp,
		    cnp, td);
		if (error != 0)
			goto unionfs_lookup_out;

		if (LK_SHARED == (cnp->cn_lkflags & LK_TYPE_MASK))
			FUNC6(vp, LK_RELEASE);
		if (LK_EXCLUSIVE != FUNC4(vp)) {
			FUNC11(vp, LK_EXCLUSIVE | LK_RETRY);
			lockflag = 1;
		}
		error = FUNC9(FUNC0(dvp->v_mount),
		    udvp, FUNC7(vp), cnp, td);
		if (lockflag != 0)
			FUNC6(vp, LK_RELEASE);
		if (error != 0) {
			FUNC1("unionfs_lookup: Unable to create shadow dir.");
			if ((cnp->cn_lkflags & LK_TYPE_MASK) == LK_EXCLUSIVE)
				FUNC12(vp);
			else
				FUNC14(vp);
			goto unionfs_lookup_out;
		}
		if ((cnp->cn_lkflags & LK_TYPE_MASK) == LK_SHARED)
			FUNC11(vp, LK_SHARED | LK_RETRY);
	}
	/*
	 * get unionfs vnode.
	 */
	else {
		if (uvp != NULLVP)
			error = uerror;
		else
			error = lerror;
		if (error != 0)
			goto unionfs_lookup_out;
		/*
		 * get socket vnode.
		 */
		if (uvp != NULLVP && uvp->v_type == VSOCK) {
			vp = uvp;
			FUNC13(vp);
			if (cnp->cn_lkflags & LK_TYPE_MASK)
				FUNC11(vp, cnp->cn_lkflags | LK_RETRY);
		}
		else if (lvp != NULLVP && lvp->v_type == VSOCK) {
			vp = lvp;
			FUNC13(vp);
			if (cnp->cn_lkflags & LK_TYPE_MASK)
				FUNC11(vp, cnp->cn_lkflags | LK_RETRY);
		}
		/*
		 * get unionfs vnode.
		 */
		else
			error = FUNC10(dvp->v_mount, uvp, lvp,
			    dvp, &vp, cnp, td);
		if (error != 0) {
			FUNC1("unionfs_lookup: Unable to create unionfs vnode.");
			goto unionfs_lookup_out;
		}
		if ((nameiop == DELETE || nameiop == RENAME) &&
		    (cnp->cn_lkflags & LK_TYPE_MASK) == 0)
			FUNC11(vp, LK_EXCLUSIVE | LK_RETRY);
	}

	*(ap->a_vpp) = vp;

	if ((cnflags & MAKEENTRY) && vp->v_type != VSOCK)
		FUNC8(dvp, vp, cnp);

unionfs_lookup_out:
	if (uvp != NULLVP)
		FUNC14(uvp);
	if (lvp != NULLVP)
		FUNC14(lvp);

	if (error == ENOENT && (cnflags & MAKEENTRY) != 0)
		FUNC8(dvp, NULLVP, cnp);

	FUNC2("unionfs_lookup: leave (%d)\n", error);

	return (error);
}