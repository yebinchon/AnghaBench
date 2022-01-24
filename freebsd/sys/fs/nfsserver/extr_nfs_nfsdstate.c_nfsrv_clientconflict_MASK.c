#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
struct nfsclient {scalar_t__ lc_expiry; int /*<<< orphan*/  lc_olddeleg; int /*<<< orphan*/  lc_deleg; int /*<<< orphan*/  lc_idlen; int /*<<< orphan*/  lc_id; } ;
struct TYPE_8__ {int nsf_flags; } ;
struct TYPE_7__ {int v_iflag; } ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfsclient*,int /*<<< orphan*/ ) ; 
 int LK_RETRY ; 
 scalar_t__ NFSD_MONOSEC ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int NFSNSF_UPDATEDONE ; 
 int /*<<< orphan*/  NFSNST_REVOKE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  NFSV4ROOTLOCKMUTEXPTR ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int VI_DOOMED ; 
 int /*<<< orphan*/  lc_hash ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct nfsclient*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__ nfsrv_stablefirst ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct nfsclient*,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfsv4rootfs_lock ; 

__attribute__((used)) static int
FUNC14(struct nfsclient *clp, int *haslockp, vnode_t vp,
    NFSPROC_T *p)
{
	int gotlock, lktype = 0;

	/*
	 * If lease hasn't expired, we can't fix it.
	 */
	if (clp->lc_expiry >= NFSD_MONOSEC ||
	    !(nfsrv_stablefirst.nsf_flags & NFSNSF_UPDATEDONE))
		return (0);
	if (*haslockp == 0) {
		FUNC2();
		if (vp != NULL) {
			lktype = FUNC4(vp);
			FUNC6(vp, 0);
		}
		FUNC1();
		FUNC13(&nfsv4rootfs_lock);
		do {
			gotlock = FUNC12(&nfsv4rootfs_lock, 1, NULL,
			    NFSV4ROOTLOCKMUTEXPTR, NULL);
		} while (!gotlock);
		FUNC3();
		*haslockp = 1;
		if (vp != NULL) {
			FUNC5(vp, lktype | LK_RETRY);
			if ((vp->v_iflag & VI_DOOMED) != 0)
				return (2);
		}
		return (1);
	}
	FUNC2();

	/*
	 * Ok, we can expire the conflicting client.
	 */
	FUNC10(clp->lc_id, clp->lc_idlen, NFSNST_REVOKE, p);
	FUNC7();
	FUNC8(clp, p);
	FUNC9(&clp->lc_deleg);
	FUNC9(&clp->lc_olddeleg);
	FUNC0(clp, lc_hash);
	FUNC11(clp, p);
	return (1);
}