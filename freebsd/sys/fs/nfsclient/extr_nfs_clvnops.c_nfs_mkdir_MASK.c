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
struct vop_mkdir_args {struct vnode** a_vpp; struct componentname* a_cnp; struct vattr* a_vap; struct vnode* a_dvp; } ;
struct vnode {scalar_t__ v_type; int /*<<< orphan*/  v_mount; } ;
struct vattr {int /*<<< orphan*/  va_gid; int /*<<< orphan*/  va_uid; scalar_t__ va_type; } ;
struct nfsvattr {int /*<<< orphan*/  na_ctime; } ;
struct nfsnode {scalar_t__ n_attrstamp; int /*<<< orphan*/  n_flag; } ;
struct nfsfh {int dummy; } ;
struct componentname {int cn_flags; int /*<<< orphan*/  cn_thread; int /*<<< orphan*/  cn_cred; int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;
struct TYPE_2__ {scalar_t__ nm_negnametimeo; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int MAKEENTRY ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 struct vnode* FUNC2 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsnode*) ; 
 scalar_t__ FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  NMODIFIED ; 
 scalar_t__ VDIR ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct vnode*,struct vattr*,int /*<<< orphan*/ ) ; 
 struct nfsnode* FUNC7 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,struct vnode*,struct componentname*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsnode**) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode**,struct nfsvattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct vnode*,struct nfsfh*,struct componentname*,int /*<<< orphan*/ ,struct nfsnode**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsvattr*,struct nfsvattr*,struct nfsfh**,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct vnode*) ; 

__attribute__((used)) static int
FUNC15(struct vop_mkdir_args *ap)
{
	struct vnode *dvp = ap->a_dvp;
	struct vattr *vap = ap->a_vap;
	struct componentname *cnp = ap->a_cnp;
	struct nfsnode *np = NULL, *dnp;
	struct vnode *newvp = NULL;
	struct vattr vattr;
	struct nfsfh *nfhp;
	struct nfsvattr nfsva, dnfsva;
	int error = 0, attrflag, dattrflag, ret;

	if ((error = FUNC6(dvp, &vattr, cnp->cn_cred)) != 0)
		return (error);
	vap->va_type = VDIR;
	error = FUNC13(dvp, cnp->cn_nameptr, cnp->cn_namelen,
	    vap, cnp->cn_cred, cnp->cn_thread, &dnfsva, &nfsva, &nfhp,
	    &attrflag, &dattrflag, NULL);
	dnp = FUNC7(dvp);
	FUNC1(dnp);
	dnp->n_flag |= NMODIFIED;
	if (dattrflag != 0) {
		FUNC3(dnp);
		(void) FUNC10(&dvp, &dnfsva, NULL, NULL, 0, 1);
	} else {
		dnp->n_attrstamp = 0;
		FUNC3(dnp);
		FUNC0(dvp);
	}
	if (nfhp) {
		ret = FUNC12(dvp->v_mount, dvp, nfhp, cnp, cnp->cn_thread,
		    &np, NULL, LK_EXCLUSIVE);
		if (!ret) {
			newvp = FUNC2(np);
			if (attrflag)
			   (void) FUNC10(&newvp, &nfsva, NULL,
				NULL, 0, 1);
		} else if (!error)
			error = ret;
	}
	if (!error && newvp == NULL) {
		error = FUNC9(dvp, cnp->cn_nameptr, cnp->cn_namelen,
		    cnp->cn_cred, cnp->cn_thread, &np);
		if (!error) {
			newvp = FUNC2(np);
			if (newvp->v_type != VDIR)
				error = EEXIST;
		}
	}
	if (error) {
		if (newvp)
			FUNC14(newvp);
		if (FUNC4(dvp))
			error = FUNC11(cnp->cn_thread, error,
			    vap->va_uid, vap->va_gid);
	} else {
		/*
		 * If negative lookup caching is enabled, I might as well
		 * add an entry for this node. Not necessary for correctness,
		 * but if negative caching is enabled, then the system
		 * must care about lookup caching hit rate, so...
		 */
		if (FUNC5(dvp->v_mount)->nm_negnametimeo != 0 &&
		    (cnp->cn_flags & MAKEENTRY) &&
		    attrflag != 0 && dattrflag != 0)
			FUNC8(dvp, newvp, cnp, &nfsva.na_ctime,
			    &dnfsva.na_ctime);
		*ap->a_vpp = newvp;
	}
	return (error);
}