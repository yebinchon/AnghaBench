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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int ;
struct vnode {int v_iflag; } ;
struct thread {int dummy; } ;
struct nfsnode {int dummy; } ;
struct nfsfh {int nfh_len; int /*<<< orphan*/ * nfh_fh; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINTR ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FNV1_32_INIT ; 
 int LK_EXCLUSIVE ; 
 int LK_NOWAIT ; 
 int /*<<< orphan*/  M_NFSFH ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ) ; 
 int VI_DOOMED ; 
 struct nfsnode* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfsfh*,int /*<<< orphan*/ ) ; 
 struct nfsfh* FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  newnfs_vncmpf ; 
 int FUNC7 (struct mount*,int /*<<< orphan*/ ,int,struct thread*,struct vnode**,int /*<<< orphan*/ ,struct nfsfh*) ; 
 int /*<<< orphan*/  FUNC8 (struct mount*,int /*<<< orphan*/ ,struct thread*,struct vnode**,int /*<<< orphan*/ ,struct nfsfh*) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*) ; 

int
FUNC10(struct mount *mntp, u_int8_t *fhp, int fhsize,
    struct thread *td, struct nfsnode **npp)
{
	struct vnode *nvp;
	u_int hash;
	struct nfsfh *nfhp;
	int error;

	*npp = NULL;
	/* For forced dismounts, just return error. */
	if (FUNC0(mntp))
		return (EINTR);
	nfhp = FUNC6(sizeof (struct nfsfh) + fhsize,
	    M_NFSFH, M_WAITOK);
	FUNC3(fhp, &nfhp->nfh_fh[0], fhsize);
	nfhp->nfh_len = fhsize;

	hash = FUNC4(fhp, fhsize, FNV1_32_INIT);

	/*
	 * First, try to get the vnode locked, but don't block for the lock.
	 */
	error = FUNC7(mntp, hash, (LK_EXCLUSIVE | LK_NOWAIT), td, &nvp,
	    newnfs_vncmpf, nfhp);
	if (error == 0 && nvp != NULL) {
		FUNC1(nvp, 0);
	} else if (error == EBUSY) {
		/*
		 * It is safe so long as a vflush() with
		 * FORCECLOSE has not been done. Since the Renew thread is
		 * stopped and the MNTK_UNMOUNTF flag is set before doing
		 * a vflush() with FORCECLOSE, we should be ok here.
		 */
		if (FUNC0(mntp))
			error = EINTR;
		else {
			FUNC8(mntp, hash, td, &nvp, newnfs_vncmpf, nfhp);
			if (nvp == NULL) {
				error = ENOENT;
			} else if ((nvp->v_iflag & VI_DOOMED) != 0) {
				error = ENOENT;
				FUNC9(nvp);
			} else {
				error = 0;
			}
		}
	}
	FUNC5(nfhp, M_NFSFH);
	if (error)
		return (error);
	if (nvp != NULL) {
		*npp = FUNC2(nvp);
		return (0);
	}
	return (EINVAL);
}