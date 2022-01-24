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
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct ucred {int dummy; } ;
struct nfsrv_descript {int nd_repstat; int /*<<< orphan*/  nd_mrep; } ;
struct nfsmount {int dummy; } ;
struct acl {int dummy; } ;
typedef  int /*<<< orphan*/  nfsv4stateid_t ;
typedef  int /*<<< orphan*/  nfsattrbit_t ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  NFSATTRBIT_ACL ; 
 int /*<<< orphan*/  FUNC0 (struct nfsrv_descript*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsmount*) ; 
 int /*<<< orphan*/  NFSPROC_SETACL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFSSTATEID_PUTSTATEID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct nfsmount* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nfsrv_descript*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ucred*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfsrv_descript*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfsrv_descript*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acl*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(vnode_t vp, struct ucred *cred, NFSPROC_T *p,
    struct acl *aclp, nfsv4stateid_t *stateidp, void *stuff)
{
	struct nfsrv_descript nfsd, *nd = &nfsd;
	int error;
	nfsattrbit_t attrbits;
	struct nfsmount *nmp = FUNC4(FUNC9(vp));
	
	if (!FUNC1(nmp))
		return (EOPNOTSUPP);
	FUNC0(nd, NFSPROC_SETACL, vp);
	FUNC7(nd, stateidp, NFSSTATEID_PUTSTATEID);
	FUNC3(&attrbits);
	FUNC2(&attrbits, NFSATTRBIT_ACL);
	(void) FUNC8(nd, FUNC9(vp), vp, aclp, NULL, NULL, 0,
	    &attrbits, NULL, NULL, 0, 0, 0, 0, (uint64_t)0, NULL);
	error = FUNC6(nd, vp, p, cred, stuff);
	if (error)
		return (error);
	/* Don't care about the pre/postop attributes */
	FUNC5(nd->nd_mrep);
	return (nd->nd_repstat);
}