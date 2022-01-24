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
typedef  int /*<<< orphan*/  vnode_t ;
struct nfsnode {TYPE_1__* n_fhp; } ;
struct nfsmount {struct nfsclclient* nm_clp; } ;
struct nfscllayout {int nfsly_flags; int /*<<< orphan*/  nfsly_lock; } ;
struct nfsclclient {int /*<<< orphan*/  nfsc_nmp; } ;
typedef  int /*<<< orphan*/  mount_t ;
struct TYPE_2__ {int /*<<< orphan*/  nfh_len; int /*<<< orphan*/  nfh_fh; } ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  NFSCLSTATEMUTEXPTR ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nfsmount*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int NFSLY_WRITTEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct nfsmount* FUNC6 (int /*<<< orphan*/ ) ; 
 struct nfsnode* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct nfscllayout*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nfscllayout* FUNC9 (struct nfsclclient*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int
FUNC13(vnode_t vp, NFSPROC_T *p)
{
	struct nfsclclient *clp;
	struct nfscllayout *lyp;
	struct nfsnode *np = FUNC7(vp);
	mount_t mp;
	struct nfsmount *nmp;

	mp = FUNC12(vp);
	nmp = FUNC6(mp);
	if (FUNC2(nmp))
		return (0);
	FUNC3();
	clp = nmp->nm_clp;
	if (clp == NULL) {
		FUNC5();
		return (EPERM);
	}
	lyp = FUNC9(clp, np->n_fhp->nfh_fh, np->n_fhp->nfh_len);
	if (lyp == NULL) {
		FUNC5();
		return (EPERM);
	}
	FUNC10(&lyp->nfsly_lock, NULL, NFSCLSTATEMUTEXPTR, mp);
	if (FUNC1(mp)) {
		FUNC5();
		return (EPERM);
	}
tryagain:
	if ((lyp->nfsly_flags & NFSLY_WRITTEN) != 0) {
		lyp->nfsly_flags &= ~NFSLY_WRITTEN;
		FUNC5();
		FUNC0(4, "do layoutcommit2\n");
		FUNC8(clp->nfsc_nmp, lyp, FUNC4(p), p);
		FUNC3();
		goto tryagain;
	}
	FUNC11(&lyp->nfsly_lock);
	FUNC5();
	return (0);
}