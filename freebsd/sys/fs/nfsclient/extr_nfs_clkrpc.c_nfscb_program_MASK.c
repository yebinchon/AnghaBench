#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct svc_req {scalar_t__ rq_proc; int /*<<< orphan*/  rq_xid; int /*<<< orphan*/  rq_addr; TYPE_1__* rq_args; } ;
struct nfsrv_descript {scalar_t__ nd_procnum; int nd_flag; int nd_repstat; TYPE_1__* nd_mreq; int /*<<< orphan*/ * nd_cred; TYPE_1__* nd_mrep; int /*<<< orphan*/  nd_nam2; int /*<<< orphan*/  nd_nam; TYPE_1__* nd_md; int /*<<< orphan*/  nd_dpos; } ;
typedef  int /*<<< orphan*/  nd ;
struct TYPE_6__ {scalar_t__ m_len; } ;
typedef  int /*<<< orphan*/  SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 int ND_NFSCB ; 
 int ND_NFSV4 ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int NFSERR_AUTHERR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ NFSPROC_NULL ; 
 scalar_t__ NFSV4PROC_CBCOMPOUND ; 
 int RC_DROPIT ; 
 int RC_REPLY ; 
 int /*<<< orphan*/  caddr_t ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nfsrv_descript*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct nfsrv_descript*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct svc_req*) ; 
 int /*<<< orphan*/  FUNC10 (struct svc_req*,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct svc_req*) ; 
 int /*<<< orphan*/  FUNC12 (struct svc_req*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct svc_req*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct svc_req*) ; 
 int /*<<< orphan*/  FUNC15 (struct svc_req*) ; 
 int /*<<< orphan*/  FUNC16 (struct svc_req*) ; 
 int /*<<< orphan*/  FUNC17 (struct svc_req*) ; 

__attribute__((used)) static void
FUNC18(struct svc_req *rqst, SVCXPRT *xprt)
{
	struct nfsrv_descript nd;
	int cacherep, credflavor;

	FUNC5(&nd, 0, sizeof(nd));
	if (rqst->rq_proc != NFSPROC_NULL &&
	    rqst->rq_proc != NFSV4PROC_CBCOMPOUND) {
		FUNC15(rqst);
		FUNC9(rqst);
		return;
	}
	nd.nd_procnum = rqst->rq_proc;
	nd.nd_flag = (ND_NFSCB | ND_NFSV4);

	/*
	 * Note: we want rq_addr, not svc_getrpccaller for nd_nam2 -
	 * NFS_SRVMAXDATA uses a NULL value for nd_nam2 to detect TCP
	 * mounts.
	 */
	nd.nd_mrep = rqst->rq_args;
	rqst->rq_args = NULL;
	FUNC7(&nd.nd_mrep, M_WAITOK);
	nd.nd_md = nd.nd_mrep;
	nd.nd_dpos = FUNC6(nd.nd_md, caddr_t);
	nd.nd_nam = FUNC11(rqst);
	nd.nd_nam2 = rqst->rq_addr;
	nd.nd_mreq = NULL;
	nd.nd_cred = NULL;

	FUNC0(1, "cbproc=%d\n",nd.nd_procnum);
	if (nd.nd_procnum != NFSPROC_NULL) {
		if (!FUNC10(rqst, &nd.nd_cred, &credflavor)) {
			FUNC17(rqst);
			FUNC9(rqst);
			FUNC3(nd.nd_mrep);
			return;
		}

		/* For now, I don't care what credential flavor was used. */
#ifdef notyet
#ifdef MAC
		mac_cred_associate_nfsd(nd.nd_cred);
#endif
#endif
		cacherep = FUNC8(&nd, rqst->rq_xid);
	} else {
		FUNC1(nd.nd_mreq);
		nd.nd_mreq->m_len = 0;
		cacherep = RC_REPLY;
	}
	if (nd.nd_mrep != NULL)
		FUNC3(nd.nd_mrep);

	if (nd.nd_cred != NULL)
		FUNC2(nd.nd_cred);

	if (cacherep == RC_DROPIT) {
		if (nd.nd_mreq != NULL)
			FUNC3(nd.nd_mreq);
		FUNC9(rqst);
		return;
	}

	if (nd.nd_mreq == NULL) {
		FUNC14(rqst);
		FUNC9(rqst);
		return;
	}

	if (nd.nd_repstat & NFSERR_AUTHERR) {
		FUNC13(rqst, nd.nd_repstat & ~NFSERR_AUTHERR);
		if (nd.nd_mreq != NULL)
			FUNC3(nd.nd_mreq);
	} else if (!FUNC12(rqst, nd.nd_mreq))
		FUNC16(rqst);
	else
		FUNC0(1, "cbrep sent\n");
	FUNC9(rqst);
}