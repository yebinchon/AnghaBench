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
struct vop_symlink_args {struct vnode** a_vpp; int /*<<< orphan*/  a_target; struct componentname* a_cnp; struct vattr* a_vap; struct vnode* a_dvp; } ;
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct vattr {int /*<<< orphan*/  va_gid; int /*<<< orphan*/  va_uid; int /*<<< orphan*/  va_type; } ;
struct nfsvattr {int /*<<< orphan*/  na_ctime; } ;
struct nfsnode {scalar_t__ n_attrstamp; int /*<<< orphan*/  n_flag; } ;
struct nfsfh {int dummy; } ;
struct componentname {int cn_flags; int /*<<< orphan*/  cn_thread; int /*<<< orphan*/  cn_cred; int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;
struct TYPE_2__ {scalar_t__ nm_negnametimeo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int MAKEENTRY ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 struct vnode* FUNC2 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsnode*) ; 
 scalar_t__ FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  NMODIFIED ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLNK ; 
 struct nfsnode* FUNC6 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,struct vnode*,struct componentname*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsnode**) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode**,struct nfsvattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct vnode*,struct nfsfh*,struct componentname*,int /*<<< orphan*/ ,struct nfsnode**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsvattr*,struct nfsvattr*,struct nfsfh**,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct vnode*) ; 

__attribute__((used)) static int
FUNC14(struct vop_symlink_args *ap)
{
	struct vnode *dvp = ap->a_dvp;
	struct vattr *vap = ap->a_vap;
	struct componentname *cnp = ap->a_cnp;
	struct nfsvattr nfsva, dnfsva;
	struct nfsfh *nfhp;
	struct nfsnode *np = NULL, *dnp;
	struct vnode *newvp = NULL;
	int error = 0, attrflag, dattrflag, ret;

	vap->va_type = VLNK;
	error = FUNC12(dvp, cnp->cn_nameptr, cnp->cn_namelen,
	    ap->a_target, vap, cnp->cn_cred, cnp->cn_thread, &dnfsva,
	    &nfsva, &nfhp, &attrflag, &dattrflag, NULL);
	if (nfhp) {
		ret = FUNC11(dvp->v_mount, dvp, nfhp, cnp, cnp->cn_thread,
		    &np, NULL, LK_EXCLUSIVE);
		if (!ret)
			newvp = FUNC2(np);
		else if (!error)
			error = ret;
	}
	if (newvp != NULL) {
		if (attrflag)
			(void) FUNC9(&newvp, &nfsva, NULL, NULL,
			    0, 1);
	} else if (!error) {
		/*
		 * If we do not have an error and we could not extract the
		 * newvp from the response due to the request being NFSv2, we
		 * have to do a lookup in order to obtain a newvp to return.
		 */
		error = FUNC8(dvp, cnp->cn_nameptr, cnp->cn_namelen,
		    cnp->cn_cred, cnp->cn_thread, &np);
		if (!error)
			newvp = FUNC2(np);
	}
	if (error) {
		if (newvp)
			FUNC13(newvp);
		if (FUNC4(dvp))
			error = FUNC10(cnp->cn_thread, error,
			    vap->va_uid, vap->va_gid);
	} else {
		*ap->a_vpp = newvp;
	}

	dnp = FUNC6(dvp);
	FUNC1(dnp);
	dnp->n_flag |= NMODIFIED;
	if (dattrflag != 0) {
		FUNC3(dnp);
		(void) FUNC9(&dvp, &dnfsva, NULL, NULL, 0, 1);
	} else {
		dnp->n_attrstamp = 0;
		FUNC3(dnp);
		FUNC0(dvp);
	}
	/*
	 * If negative lookup caching is enabled, I might as well
	 * add an entry for this node. Not necessary for correctness,
	 * but if negative caching is enabled, then the system
	 * must care about lookup caching hit rate, so...
	 */
	if (FUNC5(dvp->v_mount)->nm_negnametimeo != 0 &&
	    (cnp->cn_flags & MAKEENTRY) && attrflag != 0 && error == 0) {
		FUNC7(dvp, newvp, cnp, &nfsva.na_ctime, NULL);
	}
	return (error);
}