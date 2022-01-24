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
typedef  scalar_t__ uid_t ;
struct vop_create_args {struct vnode** a_vpp; struct componentname* a_cnp; struct vattr* a_vap; struct vnode* a_dvp; } ;
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct vattr {scalar_t__ va_type; int va_vaflags; scalar_t__ va_uid; scalar_t__ va_gid; } ;
struct nfsvattr {int /*<<< orphan*/  na_ctime; } ;
struct nfsnode {int n_flag; scalar_t__ n_attrstamp; int /*<<< orphan*/  n_mtx; } ;
struct nfsmount {int dummy; } ;
struct nfsfh {int dummy; } ;
struct componentname {int cn_flags; int /*<<< orphan*/  cn_thread; int /*<<< orphan*/  cn_cred; int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;
typedef  int /*<<< orphan*/  nfsquad_t ;
typedef  scalar_t__ gid_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int MAKEENTRY ; 
 int NFSERR_NOTSUPP ; 
 scalar_t__ FUNC1 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsnode*) ; 
 struct vnode* FUNC3 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsnode*) ; 
 scalar_t__ FUNC5 (struct vnode*) ; 
 scalar_t__ FUNC6 (struct vnode*) ; 
 int NMODIFIED ; 
 int NREMOVEINPROG ; 
 int NREMOVEWANT ; 
 int O_EXCL ; 
 int /*<<< orphan*/  PZERO ; 
 int VA_EXCLUSIVE ; 
 struct nfsmount* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ VNOVAL ; 
 int FUNC8 (struct vnode*,struct vattr*,int /*<<< orphan*/ ) ; 
 scalar_t__ VSOCK ; 
 struct nfsnode* FUNC9 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*,struct vnode*,struct componentname*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (struct vnode*,struct vnode**,struct componentname*,struct vattr*) ; 
 scalar_t__ FUNC14 (struct vattr*,struct nfsvattr*) ; 
 int FUNC15 (struct vnode**,struct nfsvattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int FUNC17 (int /*<<< orphan*/ ,struct vnode*,struct nfsfh*,struct componentname*,int /*<<< orphan*/ ,struct nfsnode**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vattr*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsvattr*,struct nfsvattr*,struct nfsfh**,int*,int*,int /*<<< orphan*/ *) ; 
 int FUNC19 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsvattr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsvattr*,struct nfsvattr*,struct nfsfh**,int*,int*,int /*<<< orphan*/ *) ; 
 int FUNC21 (struct vnode*,struct vattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsvattr*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC23 (struct vnode*) ; 

__attribute__((used)) static int
FUNC24(struct vop_create_args *ap)
{
	struct vnode *dvp = ap->a_dvp;
	struct vattr *vap = ap->a_vap;
	struct componentname *cnp = ap->a_cnp;
	struct nfsnode *np = NULL, *dnp;
	struct vnode *newvp = NULL;
	struct nfsmount *nmp;
	struct nfsvattr dnfsva, nfsva;
	struct nfsfh *nfhp;
	nfsquad_t cverf;
	int error = 0, attrflag, dattrflag, fmode = 0;
	struct vattr vattr;

	/*
	 * Oops, not for me..
	 */
	if (vap->va_type == VSOCK)
		return (FUNC13(dvp, ap->a_vpp, cnp, vap));

	if ((error = FUNC8(dvp, &vattr, cnp->cn_cred)))
		return (error);
	if (vap->va_vaflags & VA_EXCLUSIVE)
		fmode |= O_EXCL;
	dnp = FUNC9(dvp);
	nmp = FUNC7(FUNC22(dvp));
again:
	/* For NFSv4, wait until any remove is done. */
	FUNC2(dnp);
	while (FUNC1(nmp) && (dnp->n_flag & NREMOVEINPROG)) {
		dnp->n_flag |= NREMOVEWANT;
		(void) FUNC11((caddr_t)dnp, &dnp->n_mtx, PZERO, "nfscrt", 0);
	}
	FUNC4(dnp);

	cverf = FUNC12();
	error = FUNC18(dvp, cnp->cn_nameptr, cnp->cn_namelen,
	    vap, cverf, fmode, cnp->cn_cred, cnp->cn_thread, &dnfsva, &nfsva,
	    &nfhp, &attrflag, &dattrflag, NULL);
	if (!error) {
		if (nfhp == NULL)
			(void) FUNC20(dvp, cnp->cn_nameptr,
			    cnp->cn_namelen, cnp->cn_cred, cnp->cn_thread,
			    &dnfsva, &nfsva, &nfhp, &attrflag, &dattrflag,
			    NULL);
		if (nfhp != NULL)
			error = FUNC17(dvp->v_mount, dvp, nfhp, cnp,
			    cnp->cn_thread, &np, NULL, LK_EXCLUSIVE);
	}
	if (dattrflag)
		(void) FUNC15(&dvp, &dnfsva, NULL, NULL, 0, 1);
	if (!error) {
		newvp = FUNC3(np);
		if (attrflag == 0)
			error = FUNC19(newvp, cnp->cn_cred,
			    cnp->cn_thread, &nfsva, NULL);
		if (error == 0)
			error = FUNC15(&newvp, &nfsva, NULL, NULL,
			    0, 1);
	}
	if (error) {
		if (newvp != NULL) {
			FUNC23(newvp);
			newvp = NULL;
		}
		if (FUNC5(dvp) && (fmode & O_EXCL) &&
		    error == NFSERR_NOTSUPP) {
			fmode &= ~O_EXCL;
			goto again;
		}
	} else if (FUNC5(dvp) && (fmode & O_EXCL)) {
		if (FUNC14(vap, &nfsva)) {
			error = FUNC21(newvp, vap, NULL, cnp->cn_cred,
			    cnp->cn_thread, &nfsva, &attrflag, NULL);
			if (error && (vap->va_uid != (uid_t)VNOVAL ||
			    vap->va_gid != (gid_t)VNOVAL)) {
				/* try again without setting uid/gid */
				vap->va_uid = (uid_t)VNOVAL;
				vap->va_gid = (uid_t)VNOVAL;
				error = FUNC21(newvp, vap, NULL, 
				    cnp->cn_cred, cnp->cn_thread, &nfsva,
				    &attrflag, NULL);
			}
			if (attrflag)
				(void) FUNC15(&newvp, &nfsva, NULL,
				    NULL, 0, 1);
			if (error != 0)
				FUNC23(newvp);
		}
	}
	if (!error) {
		if ((cnp->cn_flags & MAKEENTRY) && attrflag)
			FUNC10(dvp, newvp, cnp, &nfsva.na_ctime,
			    NULL);
		*ap->a_vpp = newvp;
	} else if (FUNC6(dvp)) {
		error = FUNC16(cnp->cn_thread, error, vap->va_uid,
		    vap->va_gid);
	}
	FUNC2(dnp);
	dnp->n_flag |= NMODIFIED;
	if (!dattrflag) {
		dnp->n_attrstamp = 0;
		FUNC0(dvp);
	}
	FUNC4(dnp);
	return (error);
}