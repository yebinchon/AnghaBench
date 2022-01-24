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
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct nfsrvsetacldsdorpc {scalar_t__ done; scalar_t__ inprog; int err; int /*<<< orphan*/  tsk; struct acl* aclp; int /*<<< orphan*/ * p; struct ucred* cred; struct vnode* vp; struct nfsmount* nmp; int /*<<< orphan*/  fh; } ;
struct nfsmount {int dummy; } ;
struct acl {int dummy; } ;
typedef  int /*<<< orphan*/  fhandle_t ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  PVFS ; 
 int /*<<< orphan*/  FUNC2 (struct nfsrvsetacldsdorpc*,int /*<<< orphan*/ ) ; 
 int hz ; 
 struct nfsrvsetacldsdorpc* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct nfsrvsetacldsdorpc*) ; 
 scalar_t__ nfs_pnfsiothreads ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct ucred*,int /*<<< orphan*/ *,struct vnode*,struct nfsmount*,struct acl*) ; 
 int /*<<< orphan*/  start_setacldsdorpc ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC8(fhandle_t *fhp, struct ucred *cred, NFSPROC_T *p,
    struct vnode *vp, struct nfsmount **nmpp, int mirrorcnt, struct acl *aclp,
    int *failposp)
{
	struct nfsrvsetacldsdorpc *drpc, *tdrpc;
	int error, i, ret, timo;

	FUNC1(4, "in nfsrv_setacldsrpc\n");
	drpc = NULL;
	if (mirrorcnt > 1)
		tdrpc = drpc = FUNC3(sizeof(*drpc) * (mirrorcnt - 1), M_TEMP,
		    M_WAITOK);

	/*
	 * Do the setattr RPC for every DS, using a separate kernel process
	 * for every DS except the last one.
	 */
	error = 0;
	for (i = 0; i < mirrorcnt - 1; i++, tdrpc++) {
		tdrpc->done = 0;
		tdrpc->inprog = 0;
		FUNC0(fhp, &tdrpc->fh, sizeof(*fhp));
		tdrpc->nmp = *nmpp;
		tdrpc->vp = vp;
		tdrpc->cred = cred;
		tdrpc->p = p;
		tdrpc->aclp = aclp;
		tdrpc->err = 0;
		ret = EIO;
		if (nfs_pnfsiothreads != 0) {
			ret = FUNC4(start_setacldsdorpc, tdrpc);
			FUNC1(4, "nfsrv_setacldsrpc: nfs_pnfsio=%d\n",
			    ret);
		}
		if (ret != 0) {
			ret = FUNC6(fhp, cred, p, vp, *nmpp,
			    aclp);
			if (FUNC5(ret) && *failposp == -1)
				*failposp = i;
			else if (error == 0 && ret != 0)
				error = ret;
		}
		nmpp++;
		fhp++;
	}
	ret = FUNC6(fhp, cred, p, vp, *nmpp, aclp);
	if (FUNC5(ret) && *failposp == -1 && mirrorcnt > 1)
		*failposp = mirrorcnt - 1;
	else if (error == 0 && ret != 0)
		error = ret;
	FUNC1(4, "nfsrv_setacldsrpc: aft setextat=%d\n", error);
	tdrpc = drpc;
	timo = hz / 50;		/* Wait for 20msec. */
	if (timo < 1)
		timo = 1;
	for (i = 0; i < mirrorcnt - 1; i++, tdrpc++) {
		/* Wait for RPCs on separate threads to complete. */
		while (tdrpc->inprog != 0 && tdrpc->done == 0)
			FUNC7(&tdrpc->tsk, PVFS, "srvacds", timo);
		if (FUNC5(tdrpc->err) && *failposp == -1)
			*failposp = i;
		else if (error == 0 && tdrpc->err != 0)
			error = tdrpc->err;
	}
	FUNC2(drpc, M_TEMP);
	return (error);
}