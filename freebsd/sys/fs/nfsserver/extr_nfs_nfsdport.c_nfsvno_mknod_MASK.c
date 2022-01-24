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
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsvattr {int na_type; int /*<<< orphan*/  na_vattr; } ;
struct nameidata {scalar_t__ ni_startdir; int /*<<< orphan*/  ni_dvp; int /*<<< orphan*/  ni_cnd; scalar_t__ ni_vp; } ;
typedef  enum vtype { ____Placeholder_vtype } vtype ;

/* Variables and functions */
 int EEXIST ; 
 int NFSERR_BADTYPE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PRIV_VFS_MKNOD_DEV ; 
 int VBLK ; 
 int VCHR ; 
 int VFIFO ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int VSOCK ; 
 int /*<<< orphan*/  FUNC3 (struct nameidata*) ; 
 int FUNC4 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

int
FUNC7(struct nameidata *ndp, struct nfsvattr *nvap, struct ucred *cred,
    struct thread *p)
{
	int error = 0;
	enum vtype vtyp;

	vtyp = nvap->na_type;
	/*
	 * Iff doesn't exist, create it.
	 */
	if (ndp->ni_vp) {
		FUNC6(ndp->ni_startdir);
		FUNC3(ndp);
		FUNC5(ndp->ni_dvp);
		FUNC6(ndp->ni_vp);
		error = EEXIST;
		goto out;
	}
	if (vtyp != VCHR && vtyp != VBLK && vtyp != VSOCK && vtyp != VFIFO) {
		FUNC6(ndp->ni_startdir);
		FUNC3(ndp);
		FUNC5(ndp->ni_dvp);
		error = NFSERR_BADTYPE;
		goto out;
	}
	if (vtyp == VSOCK) {
		FUNC6(ndp->ni_startdir);
		error = FUNC1(ndp->ni_dvp, &ndp->ni_vp,
		    &ndp->ni_cnd, &nvap->na_vattr);
		FUNC5(ndp->ni_dvp);
		FUNC3(ndp);
	} else {
		if (nvap->na_type != VFIFO &&
		    (error = FUNC4(cred, PRIV_VFS_MKNOD_DEV))) {
			FUNC6(ndp->ni_startdir);
			FUNC3(ndp);
			FUNC5(ndp->ni_dvp);
			goto out;
		}
		error = FUNC2(ndp->ni_dvp, &ndp->ni_vp,
		    &ndp->ni_cnd, &nvap->na_vattr);
		FUNC5(ndp->ni_dvp);
		FUNC3(ndp);
		FUNC6(ndp->ni_startdir);
		/*
		 * Since VOP_MKNOD returns the ni_vp, I can't
		 * see any reason to do the lookup.
		 */
	}

out:
	FUNC0(error);
	return (error);
}