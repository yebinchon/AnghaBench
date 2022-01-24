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
struct nfsfh {int dummy; } ;
struct nfsclwritedsdorpc {int len; int vers; int minorvers; scalar_t__ inprog; int /*<<< orphan*/ * p; struct ucred* cred; struct nfsfh* fhp; struct nfsclds* dsp; int /*<<< orphan*/  off; int /*<<< orphan*/  vp; scalar_t__ done; } ;
struct nfsclds {int dummy; } ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct nfsclwritedsdorpc*) ; 
 scalar_t__ nfs_pnfsiothreads ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nfsclds*,struct nfsfh*,int,int,struct ucred*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  start_commitds ; 

__attribute__((used)) static int
FUNC3(vnode_t vp, uint64_t offset, int cnt, struct nfsclds *dsp,
    struct nfsfh *fhp, int vers, int minorvers,
    struct nfsclwritedsdorpc *drpc, struct ucred *cred, NFSPROC_T *p)
{
	int error, ret;

	error = 0;
	drpc->done = 0;
	drpc->vp = vp;
	drpc->off = offset;
	drpc->len = cnt;
	drpc->dsp = dsp;
	drpc->fhp = fhp;
	drpc->vers = vers;
	drpc->minorvers = minorvers;
	drpc->cred = cred;
	drpc->p = p;
	drpc->inprog = 0;
	ret = EIO;
	if (nfs_pnfsiothreads != 0) {
		ret = FUNC1(start_commitds, drpc);
		FUNC0(4, "nfsio_commitds: nfs_pnfsio=%d\n", ret);
	}
	if (ret != 0)
		error = FUNC2(vp, offset, cnt, dsp, fhp, vers,
		    minorvers, cred, p);
	FUNC0(4, "nfsio_commitds: error=%d\n", error);
	return (error);
}