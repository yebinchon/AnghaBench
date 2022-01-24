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
typedef  scalar_t__ u_quad_t ;
struct nfslayout {int lay_flags; } ;
struct nfsclient {int lc_flags; } ;
typedef  int /*<<< orphan*/  nfsv4stateid_t ;
typedef  int /*<<< orphan*/  nfsquad_t ;
typedef  int /*<<< orphan*/  fhandle_t ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int LCL_NFSV41 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int NFSERR_NOMATCHLAYOUT ; 
 int NFSLAY_RECALL ; 
 int NFSLAY_RETURNED ; 
 int /*<<< orphan*/  NFSV4OP_CBLAYOUTRECALL ; 
 int FUNC3 (struct nfsclient*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsclient**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct nfslayout*) ; 

__attribute__((used)) static int
FUNC7(nfsquad_t clid, nfsv4stateid_t *stateidp, fhandle_t *fhp,
    struct nfslayout *lyp, int changed, int laytype, NFSPROC_T *p)
{
	struct nfsclient *clp;
	int error;

	FUNC2(4, "nfsrv_recalllayout\n");
	error = FUNC4(clid, 0, &clp, NULL, (nfsquad_t)((u_quad_t)0),
	    0, NULL, p);
	FUNC2(4, "aft nfsrv_getclient=%d\n", error);
	if (error != 0) {
		FUNC5("nfsrv_recalllayout: getclient err=%d\n", error);
		return (error);
	}
	if ((clp->lc_flags & LCL_NFSV41) != 0) {
		error = FUNC3(clp, NFSV4OP_CBLAYOUTRECALL,
		    stateidp, changed, fhp, NULL, NULL, laytype, p);
		/* If lyp != NULL, handle an error return here. */
		if (error != 0 && lyp != NULL) {
			FUNC0();
			/*
			 * Mark it returned, since no layout recall
			 * has been done.
			 * All errors seem to be non-recoverable, although
			 * NFSERR_NOMATCHLAYOUT is a normal event.
			 */
			if ((lyp->lay_flags & NFSLAY_RECALL) != 0) {
				lyp->lay_flags |= NFSLAY_RETURNED;
				FUNC6(lyp);
			}
			FUNC1();
			if (error != NFSERR_NOMATCHLAYOUT)
				FUNC5("nfsrv_recalllayout: err=%d\n", error);
		}
	} else
		FUNC5("nfsrv_recalllayout: clp not NFSv4.1\n");
	return (error);
}