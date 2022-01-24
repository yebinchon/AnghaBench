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
typedef  scalar_t__ u_quad_t ;
struct TYPE_5__ {int /*<<< orphan*/  seqid; } ;
struct nfsstate {TYPE_1__ ls_stateid; } ;
struct nfsrv_descript {int dummy; } ;
struct nfsclient {int dummy; } ;
struct TYPE_6__ {scalar_t__ seqid; } ;
typedef  TYPE_2__ nfsv4stateid_t ;
typedef  int /*<<< orphan*/  nfsquad_t ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int /*<<< orphan*/  CLOPS_RENEW ; 
 int NFSERR_OLDSTATEID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsclient**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsrv_descript*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct nfsclient*,TYPE_2__*,int /*<<< orphan*/ ,struct nfsstate**) ; 

int
FUNC5(struct nfsrv_descript *nd, nfsv4stateid_t *stateidp,
    NFSPROC_T *p)
{
	struct nfsclient *clp;
	struct nfsstate *stp;
	int error;

	FUNC0();
	/*
	 * Look up the stateid
	 */
	error = FUNC3((nfsquad_t)((u_quad_t)0), CLOPS_RENEW, &clp,
	    NULL, (nfsquad_t)((u_quad_t)0), 0, nd, p);
	if (error == 0)
		error = FUNC4(clp, stateidp, 0, &stp);
	if (error == 0 && stateidp->seqid != 0 &&
	    FUNC2(stateidp->seqid, stp->ls_stateid.seqid))
		error = NFSERR_OLDSTATEID;
	FUNC1();
	return (error);
}