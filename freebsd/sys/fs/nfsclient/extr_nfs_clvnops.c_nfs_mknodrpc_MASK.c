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
typedef  int u_int32_t ;
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct vattr {int va_rdev; int /*<<< orphan*/  va_gid; int /*<<< orphan*/  va_uid; int /*<<< orphan*/  va_type; } ;
struct nfsvattr {int dummy; } ;
struct nfsnode {scalar_t__ n_attrstamp; int /*<<< orphan*/  n_flag; } ;
struct nfsfh {int dummy; } ;
struct componentname {int /*<<< orphan*/  cn_thread; int /*<<< orphan*/  cn_cred; int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 struct vnode* FUNC2 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsnode*) ; 
 scalar_t__ FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  NMODIFIED ; 
 int /*<<< orphan*/  VBLK ; 
 int /*<<< orphan*/  VCHR ; 
 int /*<<< orphan*/  VFIFO ; 
 int FUNC5 (struct vnode*,struct vattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VSOCK ; 
 struct nfsnode* FUNC6 (struct vnode*) ; 
 int FUNC7 (struct vnode**,struct nfsvattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct vnode*,struct nfsfh*,struct componentname*,int /*<<< orphan*/ ,struct nfsnode**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsvattr*,struct nfsvattr*,struct nfsfh**,int*,int*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vattr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsvattr*,struct nfsvattr*,struct nfsfh**,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*) ; 

__attribute__((used)) static int
FUNC13(struct vnode *dvp, struct vnode **vpp, struct componentname *cnp,
    struct vattr *vap)
{
	struct nfsvattr nfsva, dnfsva;
	struct vnode *newvp = NULL;
	struct nfsnode *np = NULL, *dnp;
	struct nfsfh *nfhp;
	struct vattr vattr;
	int error = 0, attrflag, dattrflag;
	u_int32_t rdev;

	if (vap->va_type == VCHR || vap->va_type == VBLK)
		rdev = vap->va_rdev;
	else if (vap->va_type == VFIFO || vap->va_type == VSOCK)
		rdev = 0xffffffff;
	else
		return (EOPNOTSUPP);
	if ((error = FUNC5(dvp, &vattr, cnp->cn_cred)))
		return (error);
	error = FUNC11(dvp, cnp->cn_nameptr, cnp->cn_namelen, vap,
	    rdev, vap->va_type, cnp->cn_cred, cnp->cn_thread, &dnfsva,
	    &nfsva, &nfhp, &attrflag, &dattrflag, NULL);
	if (!error) {
		if (!nfhp)
			(void) FUNC10(dvp, cnp->cn_nameptr,
			    cnp->cn_namelen, cnp->cn_cred, cnp->cn_thread,
			    &dnfsva, &nfsva, &nfhp, &attrflag, &dattrflag,
			    NULL);
		if (nfhp)
			error = FUNC9(dvp->v_mount, dvp, nfhp, cnp,
			    cnp->cn_thread, &np, NULL, LK_EXCLUSIVE);
	}
	if (dattrflag)
		(void) FUNC7(&dvp, &dnfsva, NULL, NULL, 0, 1);
	if (!error) {
		newvp = FUNC2(np);
		if (attrflag != 0) {
			error = FUNC7(&newvp, &nfsva, NULL, NULL,
			    0, 1);
			if (error != 0)
				FUNC12(newvp);
		}
	}
	if (!error) {
		*vpp = newvp;
	} else if (FUNC4(dvp)) {
		error = FUNC8(cnp->cn_thread, error, vap->va_uid,
		    vap->va_gid);
	}
	dnp = FUNC6(dvp);
	FUNC1(dnp);
	dnp->n_flag |= NMODIFIED;
	if (!dattrflag) {
		dnp->n_attrstamp = 0;
		FUNC0(dvp);
	}
	FUNC3(dnp);
	return (error);
}