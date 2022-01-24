#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct TYPE_6__ {scalar_t__ oa_flavor; } ;
struct svc_req {int rq_proc; TYPE_1__ rq_cred; } ;
struct TYPE_7__ {int uid; int gid; int gidlen; int* gidlist; } ;
typedef  TYPE_2__ rpc_gss_ucred_t ;
struct TYPE_8__ {int service; char* mechanism; } ;
typedef  TYPE_3__ rpc_gss_rawcred_t ;
typedef  int /*<<< orphan*/  SVCXPRT ;

/* Variables and functions */
 scalar_t__ RPCSEC_GSS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_req*,TYPE_3__**,TYPE_2__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xdr_int ; 
 int /*<<< orphan*/  xdr_void ; 

__attribute__((used)) static void
FUNC8(struct svc_req *rqstp, register SVCXPRT *transp)
{
	rpc_gss_rawcred_t *rcred;
	rpc_gss_ucred_t *ucred;
	int		i, num;

	if (rqstp->rq_cred.oa_flavor != RPCSEC_GSS) {
		FUNC7(transp);
		return;
	}		
		
	if (!FUNC1(rqstp, &rcred, &ucred, NULL)) {
		FUNC6(transp);
		return;
	}

	FUNC0("svc=%d, mech=%s, uid=%d, gid=%d, gids={",
	    rcred->service, rcred->mechanism, ucred->uid, ucred->gid);
	for (i = 0; i < ucred->gidlen; i++) {
		if (i > 0) FUNC0(",");
		FUNC0("%d", ucred->gidlist[i]);
	}
	FUNC0("}\n");

	switch (rqstp->rq_proc) {
	case 0:
		if (!FUNC2(transp, (xdrproc_t) xdr_void, 0)) {
			FUNC4(transp);
			goto out;
		}
		if (!FUNC3(transp, (xdrproc_t) xdr_void, 0)) {
			FUNC6(transp);
		}
		goto out;

	case 1:
		if (!FUNC2(transp, (xdrproc_t) xdr_int,
			(char *) &num)) {
			FUNC4(transp);
			goto out;
		}
		num += 100;
		if (!FUNC3(transp, (xdrproc_t) xdr_int,
			(char *) &num)) {
			FUNC6(transp);
		}
		goto out;

	default:
		FUNC5(transp);
		goto out;
	}

out:
	return;
}