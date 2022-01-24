#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_quad_t ;
struct vnode {scalar_t__ v_type; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_3__ {void* tv_nsec; void* tv_sec; } ;
struct nfsvattr {int /*<<< orphan*/  na_vattr; int /*<<< orphan*/  na_size; TYPE_1__ na_atime; } ;
struct nfsstate {int dummy; } ;
struct nfsrv_descript {void* nd_repstat; } ;
struct nfsexstuff {int dummy; } ;
struct TYPE_4__ {int cn_flags; } ;
struct nameidata {struct vnode* ni_vp; struct vnode* ni_dvp; struct vnode* ni_startdir; TYPE_2__ ni_cnd; } ;
typedef  int /*<<< orphan*/  nfsv4stateid_t ;
typedef  int /*<<< orphan*/  nfsquad_t ;
typedef  int /*<<< orphan*/  nfsattrbit_t ;
typedef  void* int32_t ;
typedef  int /*<<< orphan*/  NFSACL_T ;

/* Variables and functions */
 int HASBUF ; 
 int /*<<< orphan*/  NFSACCCHK_NOOVERRIDE ; 
 int /*<<< orphan*/  NFSACCCHK_VPISLOCKED ; 
 int /*<<< orphan*/  NFSATTRBIT_TIMEACCESS ; 
 void* NFSERR_NOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nfsrv_descript*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NFSV4OPEN_CREATE ; 
 int /*<<< orphan*/  FUNC2 (struct nfsvattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsexstuff*) ; 
 scalar_t__ FUNC4 (struct nfsvattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfsexstuff*) ; 
 int RDONLY ; 
 void* FUNC6 (struct vnode*,struct vnode**,TYPE_2__*,int /*<<< orphan*/ *) ; 
 void* FUNC7 (struct vnode*,int /*<<< orphan*/ *,struct ucred*) ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  VWRITE ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC8 (struct nfsrv_descript*,struct vnode*,struct nfsvattr*,int /*<<< orphan*/ *,struct thread*,int /*<<< orphan*/ *,struct nfsexstuff*) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfsstate*,struct vnode*,struct nfsrv_descript*,struct thread*,void*) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*,int /*<<< orphan*/ *,struct ucred*,struct thread*) ; 
 void* FUNC11 (struct vnode*,int /*<<< orphan*/ ,struct ucred*,struct nfsexstuff*,struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC13 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC14 (struct vnode*) ; 

void
FUNC15(struct nfsrv_descript *nd, struct nameidata *ndp,
    nfsquad_t clientid, nfsv4stateid_t *stateidp, struct nfsstate *stp,
    int *exclusive_flagp, struct nfsvattr *nvap, int32_t *cverf, int create,
    NFSACL_T *aclp, nfsattrbit_t *attrbitp, struct ucred *cred,
    struct nfsexstuff *exp, struct vnode **vpp)
{
	struct vnode *vp = NULL;
	u_quad_t tempsize;
	struct nfsexstuff nes;
	struct thread *p = curthread;

	if (ndp->ni_vp == NULL)
		nd->nd_repstat = FUNC9(clientid,
		    stateidp, stp, NULL, nd, p, nd->nd_repstat);
	if (!nd->nd_repstat) {
		if (ndp->ni_vp == NULL) {
			FUNC14(ndp->ni_startdir);
			nd->nd_repstat = FUNC6(ndp->ni_dvp,
			    &ndp->ni_vp, &ndp->ni_cnd, &nvap->na_vattr);
			/* For a pNFS server, create the data file on a DS. */
			if (nd->nd_repstat == 0) {
				/*
				 * Create a data file on a DS for a pNFS server.
				 * This function just returns if not
				 * running a pNFS DS or the creation fails.
				 */
				FUNC10(ndp->ni_vp, &nvap->na_vattr,
				    cred, p);
			}
			FUNC13(ndp->ni_dvp);
			FUNC12(ndp);
			if (!nd->nd_repstat) {
				if (*exclusive_flagp) {
					*exclusive_flagp = 0;
					FUNC2(nvap);
					nvap->na_atime.tv_sec = cverf[0];
					nvap->na_atime.tv_nsec = cverf[1];
					nd->nd_repstat = FUNC7(ndp->ni_vp,
					    &nvap->na_vattr, cred);
					if (nd->nd_repstat != 0) {
						FUNC13(ndp->ni_vp);
						ndp->ni_vp = NULL;
						nd->nd_repstat = NFSERR_NOTSUPP;
					} else
						FUNC1(attrbitp,
						    NFSATTRBIT_TIMEACCESS);
				} else {
					FUNC8(nd, ndp->ni_vp, nvap,
					    aclp, p, attrbitp, exp);
				}
			}
			vp = ndp->ni_vp;
		} else {
			if (ndp->ni_startdir)
				FUNC14(ndp->ni_startdir);
			FUNC12(ndp);
			vp = ndp->ni_vp;
			if (create == NFSV4OPEN_CREATE) {
				if (ndp->ni_dvp == vp)
					FUNC14(ndp->ni_dvp);
				else
					FUNC13(ndp->ni_dvp);
			}
			if (FUNC4(nvap) && vp->v_type == VREG) {
				if (ndp->ni_cnd.cn_flags & RDONLY)
					FUNC5(&nes);
				else
					FUNC3(&nes);
				nd->nd_repstat = FUNC11(vp, 
				    VWRITE, cred, &nes, p,
				    NFSACCCHK_NOOVERRIDE,
				    NFSACCCHK_VPISLOCKED, NULL);
				nd->nd_repstat = FUNC9(clientid,
				    stateidp, stp, vp, nd, p, nd->nd_repstat);
				if (!nd->nd_repstat) {
					tempsize = nvap->na_size;
					FUNC2(nvap);
					nvap->na_size = tempsize;
					nd->nd_repstat = FUNC7(vp,
					    &nvap->na_vattr, cred);
				}
			} else if (vp->v_type == VREG) {
				nd->nd_repstat = FUNC9(clientid,
				    stateidp, stp, vp, nd, p, nd->nd_repstat);
			}
		}
	} else {
		if (ndp->ni_cnd.cn_flags & HASBUF)
			FUNC12(ndp);
		if (ndp->ni_startdir && create == NFSV4OPEN_CREATE) {
			FUNC14(ndp->ni_startdir);
			if (ndp->ni_dvp == ndp->ni_vp)
				FUNC14(ndp->ni_dvp);
			else
				FUNC13(ndp->ni_dvp);
			if (ndp->ni_vp)
				FUNC13(ndp->ni_vp);
		}
	}
	*vpp = vp;

	FUNC0(0, nd);
}