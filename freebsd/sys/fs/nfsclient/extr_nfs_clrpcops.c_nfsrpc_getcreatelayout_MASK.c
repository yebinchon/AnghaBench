#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
struct vattr {int dummy; } ;
struct ucred {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsmount {int dummy; } ;
struct nfsfh {int /*<<< orphan*/  nfh_len; int /*<<< orphan*/ * nfh_fh; } ;
struct nfsclsession {int nfsess_maxcache; } ;
struct nfsclowner {int dummy; } ;
struct nfscllayout {int dummy; } ;
struct nfsclflayouthead {int dummy; } ;
struct nfscldeleg {int dummy; } ;
typedef  int /*<<< orphan*/  nfsv4stateid_t ;
typedef  int /*<<< orphan*/  nfsquad_t ;
struct TYPE_5__ {int /*<<< orphan*/  v_mount; } ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfsclflayouthead*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int) ; 
 scalar_t__ FUNC2 (struct nfsmount*) ; 
 int NFSLAYOUT_FLEXFILE ; 
 int NFSLAYOUT_NFSV4_1_FILES ; 
 int NFSX_STATEID ; 
 int NFSX_UNSIGNED ; 
 struct nfsmount* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfscllayout*,int /*<<< orphan*/ ) ; 
 struct nfsclsession* FUNC5 (struct nfsmount*) ; 
 int FUNC6 (TYPE_1__*,char*,int,struct vattr*,int /*<<< orphan*/ ,int,struct nfsclowner*,struct nfscldeleg**,struct ucred*,int /*<<< orphan*/ *,struct nfsvattr*,struct nfsvattr*,struct nfsfh**,int*,int*,void*,int*,int /*<<< orphan*/ *,int,int,int,int*,struct nfsclflayouthead*,int*) ; 
 int FUNC7 (struct nfsmount*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,struct nfscllayout**,struct nfsclflayouthead*,int,int,int /*<<< orphan*/ *,struct ucred*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(vnode_t dvp, char *name, int namelen, struct vattr *vap,
    nfsquad_t cverf, int fmode, struct nfsclowner *owp, struct nfscldeleg **dpp,
    struct ucred *cred, NFSPROC_T *p, struct nfsvattr *dnap,
    struct nfsvattr *nnap, struct nfsfh **nfhpp, int *attrflagp,
    int *dattrflagp, void *dstuff, int *unlockedp)
{
	struct nfscllayout *lyp;
	struct nfsclflayouthead flh;
	struct nfsfh *nfhp;
	struct nfsclsession *tsep;
	struct nfsmount *nmp;
	nfsv4stateid_t stateid;
	int error, layoutlen, layouttype, retonclose, laystat;

	error = 0;
	nmp = FUNC3(dvp->v_mount);
	if (FUNC2(nmp))
		layouttype = NFSLAYOUT_FLEXFILE;
	else
		layouttype = NFSLAYOUT_NFSV4_1_FILES;
	FUNC0(&flh);
	tsep = FUNC5(nmp);
	layoutlen = tsep->nfsess_maxcache - (NFSX_STATEID + 3 * NFSX_UNSIGNED);
	error = FUNC6(dvp, name, namelen, vap, cverf, fmode,
	    owp, dpp, cred, p, dnap, nnap, nfhpp, attrflagp, dattrflagp,
	    dstuff, unlockedp, &stateid, 1, layouttype, layoutlen, &retonclose,
	    &flh, &laystat);
	FUNC1(4, "aft nfsrpc_createlayoutrpc laystat=%d err=%d\n",
	    laystat, error);
	lyp = NULL;
	if (laystat == 0) {
		nfhp = *nfhpp;
		laystat = FUNC7(nmp, dvp, nfhp->nfh_fh,
		    nfhp->nfh_len, &stateid, retonclose, NULL, &lyp, &flh,
		    layouttype, laystat, NULL, cred, p);
	} else
		laystat = FUNC7(nmp, dvp, NULL, 0, &stateid,
		    retonclose, NULL, &lyp, &flh, layouttype, laystat, NULL,
		    cred, p);
	if (laystat == 0)
		FUNC4(lyp, 0);
	return (error);
}