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
typedef  int /*<<< orphan*/  uintmax_t ;
struct vnode {scalar_t__ v_type; } ;
struct thread {int dummy; } ;
struct nfsvattr {scalar_t__ na_filerev; int /*<<< orphan*/  na_size; int /*<<< orphan*/  na_mtime; int /*<<< orphan*/  na_atime; int /*<<< orphan*/  na_vattr; } ;
struct nfsrv_descript {int nd_flag; int /*<<< orphan*/  nd_cred; } ;
typedef  int /*<<< orphan*/  nfsattrbit_t ;

/* Variables and functions */
 scalar_t__ LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int ND_NFSV4 ; 
 int /*<<< orphan*/  NFSATTRBIT_CHANGE ; 
 int /*<<< orphan*/  NFSATTRBIT_SIZE ; 
 int /*<<< orphan*/  NFSATTRBIT_TIMEACCESS ; 
 int /*<<< orphan*/  NFSATTRBIT_TIMEMODIFY ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFSPROC_GETATTR ; 
 scalar_t__ FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct vnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ VREG ; 
 scalar_t__ nfsrv_devidcnt ; 
 int FUNC7 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nfsvattr*,int /*<<< orphan*/ *) ; 

int
FUNC8(struct vnode *vp, struct nfsvattr *nvap,
    struct nfsrv_descript *nd, struct thread *p, int vpislocked,
    nfsattrbit_t *attrbitp)
{
	int error, gotattr, lockedit = 0;
	struct nfsvattr na;

	if (vpislocked == 0) {
		/*
		 * When vpislocked == 0, the vnode is either exclusively
		 * locked by this thread or not locked by this thread.
		 * As such, shared lock it, if not exclusively locked.
		 */
		if (FUNC3(vp) != LK_EXCLUSIVE) {
			lockedit = 1;
			FUNC4(vp, LK_SHARED | LK_RETRY);
		}
	}

	/*
	 * Acquire the Change, Size and TimeModify attributes, as required.
	 * This needs to be done for regular files if:
	 * - non-NFSv4 RPCs or
	 * - when attrbitp == NULL or
	 * - an NFSv4 RPC with any of the above attributes in attrbitp.
	 * A return of 0 for nfsrv_proxyds() indicates that it has acquired
	 * these attributes.  nfsrv_proxyds() will return an error if the
	 * server is not a pNFS one.
	 */
	gotattr = 0;
	if (vp->v_type == VREG && nfsrv_devidcnt > 0 && (attrbitp == NULL ||
	    (nd->nd_flag & ND_NFSV4) == 0 ||
	    FUNC2(attrbitp, NFSATTRBIT_CHANGE) ||
	    FUNC2(attrbitp, NFSATTRBIT_SIZE) ||
	    FUNC2(attrbitp, NFSATTRBIT_TIMEACCESS) ||
	    FUNC2(attrbitp, NFSATTRBIT_TIMEMODIFY))) {
		error = FUNC7(vp, 0, 0, nd->nd_cred, p,
		    NFSPROC_GETATTR, NULL, NULL, NULL, &na, NULL);
		if (error == 0)
			gotattr = 1;
	}

	error = FUNC6(vp, &nvap->na_vattr, nd->nd_cred);
	if (lockedit != 0)
		FUNC5(vp, 0);

	/*
	 * If we got the Change, Size and Modify Time from the DS,
	 * replace them.
	 */
	if (gotattr != 0) {
		nvap->na_atime = na.na_atime;
		nvap->na_mtime = na.na_mtime;
		nvap->na_filerev = na.na_filerev;
		nvap->na_size = na.na_size;
	}
	FUNC0(4, "nfsvno_getattr: gotattr=%d err=%d chg=%ju\n", gotattr,
	    error, (uintmax_t)na.na_filerev);

	FUNC1(error);
	return (error);
}