#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_int8_t ;
struct ucred {int dummy; } ;
struct nfsmount {int /*<<< orphan*/  nm_clp; } ;
struct nfsclsession {int nfsess_maxcache; } ;
struct nfsclopen {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * other; int /*<<< orphan*/  seqid; } ;
struct nfscllayout {TYPE_1__ nfsly_stateid; } ;
struct nfsclflayouthead {int dummy; } ;
struct nfsclflayout {int dummy; } ;
struct nfscldeleg {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * other; int /*<<< orphan*/  seqid; } ;
typedef  TYPE_2__ nfsv4stateid_t ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfsclflayouthead*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (struct nfsmount*) ; 
 int NFSLAYOUT_FLEXFILE ; 
 int NFSLAYOUT_NFSV4_1_FILES ; 
 int NFSX_STATEID ; 
 int NFSX_UNSIGNED ; 
 struct nfscllayout* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct nfsclflayout**,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfscllayout*,int) ; 
 struct nfsclsession* FUNC5 (struct nfsmount*) ; 
 int FUNC6 (struct nfsmount*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_2__*,int,int /*<<< orphan*/ *,struct nfscllayout**,struct nfsclflayouthead*,int,int,int*,struct ucred*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct nfsmount*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct nfsclopen*,int /*<<< orphan*/ *,int,struct nfscldeleg**,TYPE_2__*,int,int,int,int*,struct nfsclflayouthead*,int*,struct ucred*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct nfsmount*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct nfsclopen*,int /*<<< orphan*/ *,int,struct nfscldeleg**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucred*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct nfsmount *nmp, vnode_t vp, u_int8_t *nfhp,
    int fhlen, uint8_t *newfhp, int newfhlen, uint32_t mode,
    struct nfsclopen *op, uint8_t *name, int namelen, struct nfscldeleg **dpp,
    struct ucred *cred, NFSPROC_T *p)
{
	struct nfscllayout *lyp;
	struct nfsclflayout *flp;
	struct nfsclflayouthead flh;
	int error, islocked, layoutlen, recalled, retonclose, usecurstateid;
	int layouttype, laystat;
	nfsv4stateid_t stateid;
	struct nfsclsession *tsep;

	error = 0;
	if (FUNC2(nmp))
		layouttype = NFSLAYOUT_FLEXFILE;
	else
		layouttype = NFSLAYOUT_NFSV4_1_FILES;
	/*
	 * If lyp is returned non-NULL, there will be a refcnt (shared lock)
	 * on it, iff flp != NULL or a lock (exclusive lock) on it iff
	 * flp == NULL.
	 */
	lyp = FUNC3(nmp->nm_clp, newfhp, newfhlen, 0, &flp,
	    &recalled);
	FUNC1(4, "nfsrpc_getopenlayout nfscl_getlayout lyp=%p\n", lyp);
	if (lyp == NULL)
		islocked = 0;
	else if (flp != NULL)
		islocked = 1;
	else
		islocked = 2;
	if ((lyp == NULL || flp == NULL) && recalled == 0) {
		FUNC0(&flh);
		tsep = FUNC5(nmp);
		layoutlen = tsep->nfsess_maxcache - (NFSX_STATEID +
		    3 * NFSX_UNSIGNED);
		if (lyp == NULL)
			usecurstateid = 1;
		else {
			usecurstateid = 0;
			stateid.seqid = lyp->nfsly_stateid.seqid;
			stateid.other[0] = lyp->nfsly_stateid.other[0];
			stateid.other[1] = lyp->nfsly_stateid.other[1];
			stateid.other[2] = lyp->nfsly_stateid.other[2];
		}
		error = FUNC7(nmp, vp, nfhp, fhlen,
		    newfhp, newfhlen, mode, op, name, namelen,
		    dpp, &stateid, usecurstateid, layouttype, layoutlen,
		    &retonclose, &flh, &laystat, cred, p);
		FUNC1(4, "aft nfsrpc_openlayoutrpc laystat=%d err=%d\n",
		    laystat, error);
		laystat = FUNC6(nmp, vp, newfhp, newfhlen,
		    &stateid, retonclose, NULL, &lyp, &flh, layouttype, laystat,
		    &islocked, cred, p);
	} else
		error = FUNC8(nmp, vp, nfhp, fhlen, newfhp, newfhlen,
		    mode, op, name, namelen, dpp, 0, 0, cred, p, 0, 0);
	if (islocked == 2)
		FUNC4(lyp, 1);
	else if (islocked == 1)
		FUNC4(lyp, 0);
	return (error);
}