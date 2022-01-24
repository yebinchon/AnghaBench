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
typedef  int /*<<< orphan*/  uid_t ;
struct vnode {int dummy; } ;
struct vattr {int /*<<< orphan*/  va_type; } ;
struct unionfs_node {struct vnode* un_lowervp; struct vnode* un_uppervp; } ;
struct unionfs_mount {int dummy; } ;
struct uidinfo {int dummy; } ;
struct ucred {int /*<<< orphan*/  cr_ruidinfo; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct componentname {int cn_flags; struct ucred* cn_cred; int /*<<< orphan*/  cn_pnbuf; int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;
typedef  int /*<<< orphan*/  cn ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE ; 
 int EEXIST ; 
 int HASBUF ; 
 struct vnode* NULLVP ; 
 int PCATCH ; 
 int /*<<< orphan*/  VNON ; 
 int FUNC0 (struct vnode*,struct vattr*,struct ucred*) ; 
 int FUNC1 (struct vnode*,struct vnode**,struct componentname*,struct vattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,struct vattr*,struct ucred*) ; 
 int V_WAIT ; 
 int /*<<< orphan*/  FUNC3 (struct ucred*,struct uidinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct ucred*,struct uidinfo*) ; 
 int /*<<< orphan*/  FUNC5 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct ucred* FUNC7 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC8 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC9 (struct componentname*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  namei_zone ; 
 struct uidinfo* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct uidinfo*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct unionfs_mount*,struct vattr*,struct vattr*,struct thread*) ; 
 int /*<<< orphan*/  FUNC14 (struct unionfs_node*,struct vnode*,struct thread*) ; 
 int FUNC15 (struct vnode*,struct vnode**,struct componentname*,struct componentname*,struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct mount*) ; 
 int FUNC17 (struct vnode*,struct mount**,int) ; 
 int /*<<< orphan*/  FUNC18 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC19 (struct vnode*) ; 

int
FUNC20(struct unionfs_mount *ump, struct vnode *udvp,
		    struct unionfs_node *unp, struct componentname *cnp,
		    struct thread *td)
{
	int		error;
	struct vnode   *lvp;
	struct vnode   *uvp;
	struct vattr	va;
	struct vattr	lva;
	struct componentname cn;
	struct mount   *mp;
	struct ucred   *cred;
	struct ucred   *credbk;
	struct uidinfo *rootinfo;

	if (unp->un_uppervp != NULLVP)
		return (EEXIST);

	lvp = unp->un_lowervp;
	uvp = NULLVP;
	credbk = cnp->cn_cred;

	/* Authority change to root */
	rootinfo = FUNC10((uid_t)0);
	cred = FUNC7(cnp->cn_cred);
	/*
	 * The calls to chgproccnt() are needed to compensate for change_ruid()
	 * calling chgproccnt().
	 */
	FUNC6(cred->cr_ruidinfo, 1, 0);
	FUNC3(cred, rootinfo);
	FUNC4(cred, rootinfo);
	FUNC5(cred, (uid_t)0);
	FUNC11(rootinfo);
	cnp->cn_cred = cred;

	FUNC9(&cn, 0, sizeof(cn));

	if ((error = FUNC0(lvp, &lva, cnp->cn_cred)))
		goto unionfs_mkshadowdir_abort;

	if ((error = FUNC15(udvp, &uvp, cnp, &cn, td, cnp->cn_nameptr, cnp->cn_namelen, CREATE)))
		goto unionfs_mkshadowdir_abort;
	if (uvp != NULLVP) {
		if (udvp == uvp)
			FUNC19(uvp);
		else
			FUNC18(uvp);

		error = EEXIST;
		goto unionfs_mkshadowdir_free_out;
	}

	if ((error = FUNC17(udvp, &mp, V_WAIT | PCATCH)))
		goto unionfs_mkshadowdir_free_out;
	FUNC13(ump, &lva, &va, td);

	error = FUNC1(udvp, &uvp, &cn, &va);

	if (!error) {
		FUNC14(unp, uvp, td);

		/*
		 * XXX The bug which cannot set uid/gid was corrected.
		 * Ignore errors.
		 */
		va.va_type = VNON;
		FUNC2(uvp, &va, cn.cn_cred);
	}
	FUNC16(mp);

unionfs_mkshadowdir_free_out:
	if (cn.cn_flags & HASBUF) {
		FUNC12(namei_zone, cn.cn_pnbuf);
		cn.cn_flags &= ~HASBUF;
	}

unionfs_mkshadowdir_abort:
	cnp->cn_cred = credbk;
	FUNC6(cred->cr_ruidinfo, -1, 0);
	FUNC8(cred);

	return (error);
}