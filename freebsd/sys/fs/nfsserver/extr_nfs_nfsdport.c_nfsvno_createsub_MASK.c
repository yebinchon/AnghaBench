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
typedef  scalar_t__ u_quad_t ;
struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {void* tv_nsec; void* tv_sec; } ;
struct nfsvattr {scalar_t__ na_type; int na_rdev; scalar_t__ na_size; int /*<<< orphan*/  na_vattr; TYPE_1__ na_atime; } ;
struct nfsrv_descript {int nd_repstat; int /*<<< orphan*/  nd_cred; } ;
struct nfsexstuff {int dummy; } ;
struct nameidata {struct vnode* ni_dvp; struct vnode* ni_vp; struct vnode* ni_startdir; int /*<<< orphan*/  ni_cnd; } ;
typedef  void* int32_t ;
typedef  int NFSDEV_T ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  NFSACCCHK_NOOVERRIDE ; 
 int /*<<< orphan*/  NFSACCCHK_VPISLOCKED ; 
 int NFSERR_NOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsvattr*) ; 
 int /*<<< orphan*/  PRIV_VFS_MKNOD_DEV ; 
 scalar_t__ VBLK ; 
 scalar_t__ VCHR ; 
 scalar_t__ VFIFO ; 
 scalar_t__ VNOVAL ; 
 int FUNC2 (struct vnode*,struct vnode**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct vnode*,struct vnode**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct vnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ VREG ; 
 scalar_t__ VSOCK ; 
 int /*<<< orphan*/  VWRITE ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC6 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsexstuff*,struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nameidata*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*) ; 

int
FUNC11(struct nfsrv_descript *nd, struct nameidata *ndp,
    struct vnode **vpp, struct nfsvattr *nvap, int *exclusive_flagp,
    int32_t *cverf, NFSDEV_T rdev, struct nfsexstuff *exp)
{
	u_quad_t tempsize;
	int error;
	struct thread *p = curthread;

	error = nd->nd_repstat;
	if (!error && ndp->ni_vp == NULL) {
		if (nvap->na_type == VREG || nvap->na_type == VSOCK) {
			FUNC10(ndp->ni_startdir);
			error = FUNC2(ndp->ni_dvp,
			    &ndp->ni_vp, &ndp->ni_cnd, &nvap->na_vattr);
			/* For a pNFS server, create the data file on a DS. */
			if (error == 0 && nvap->na_type == VREG) {
				/*
				 * Create a data file on a DS for a pNFS server.
				 * This function just returns if not
				 * running a pNFS DS or the creation fails.
				 */
				FUNC5(ndp->ni_vp, &nvap->na_vattr,
				    nd->nd_cred, p);
			}
			FUNC9(ndp->ni_dvp);
			FUNC7(ndp);
			if (!error) {
				if (*exclusive_flagp) {
					*exclusive_flagp = 0;
					FUNC1(nvap);
					nvap->na_atime.tv_sec = cverf[0];
					nvap->na_atime.tv_nsec = cverf[1];
					error = FUNC4(ndp->ni_vp,
					    &nvap->na_vattr, nd->nd_cred);
					if (error != 0) {
						FUNC9(ndp->ni_vp);
						ndp->ni_vp = NULL;
						error = NFSERR_NOTSUPP;
					}
				}
			}
		/*
		 * NFS V2 Only. nfsrvd_mknod() does this for V3.
		 * (This implies, just get out on an error.)
		 */
		} else if (nvap->na_type == VCHR || nvap->na_type == VBLK ||
			nvap->na_type == VFIFO) {
			if (nvap->na_type == VCHR && rdev == 0xffffffff)
				nvap->na_type = VFIFO;
                        if (nvap->na_type != VFIFO &&
			    (error = FUNC8(nd->nd_cred, PRIV_VFS_MKNOD_DEV))) {
				FUNC10(ndp->ni_startdir);
				FUNC7(ndp);
				FUNC9(ndp->ni_dvp);
				goto out;
			}
			nvap->na_rdev = rdev;
			error = FUNC3(ndp->ni_dvp, &ndp->ni_vp,
			    &ndp->ni_cnd, &nvap->na_vattr);
			FUNC9(ndp->ni_dvp);
			FUNC7(ndp);
			FUNC10(ndp->ni_startdir);
			if (error)
				goto out;
		} else {
			FUNC10(ndp->ni_startdir);
			FUNC7(ndp);
			FUNC9(ndp->ni_dvp);
			error = ENXIO;
			goto out;
		}
		*vpp = ndp->ni_vp;
	} else {
		/*
		 * Handle cases where error is already set and/or
		 * the file exists.
		 * 1 - clean up the lookup
		 * 2 - iff !error and na_size set, truncate it
		 */
		FUNC10(ndp->ni_startdir);
		FUNC7(ndp);
		*vpp = ndp->ni_vp;
		if (ndp->ni_dvp == *vpp)
			FUNC10(ndp->ni_dvp);
		else
			FUNC9(ndp->ni_dvp);
		if (!error && nvap->na_size != VNOVAL) {
			error = FUNC6(*vpp, VWRITE,
			    nd->nd_cred, exp, p, NFSACCCHK_NOOVERRIDE,
			    NFSACCCHK_VPISLOCKED, NULL);
			if (!error) {
				tempsize = nvap->na_size;
				FUNC1(nvap);
				nvap->na_size = tempsize;
				error = FUNC4(*vpp,
				    &nvap->na_vattr, nd->nd_cred);
			}
		}
		if (error)
			FUNC9(*vpp);
	}

out:
	FUNC0(error);
	return (error);
}