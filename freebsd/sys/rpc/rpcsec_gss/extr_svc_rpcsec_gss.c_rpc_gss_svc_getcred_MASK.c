#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ucred {int /*<<< orphan*/ * cr_prison; int /*<<< orphan*/  cr_svgid; int /*<<< orphan*/  cr_rgid; int /*<<< orphan*/  cr_svuid; int /*<<< orphan*/  cr_ruid; int /*<<< orphan*/  cr_uid; } ;
struct svc_rpc_gss_cookedcred {struct svc_rpc_gss_client* cc_client; } ;
struct TYPE_4__ {int /*<<< orphan*/  gidlist; int /*<<< orphan*/  gidlen; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct svc_rpc_gss_client {int cl_rpcflavor; struct ucred* cl_cred; TYPE_2__ cl_ucred; } ;
struct TYPE_3__ {scalar_t__ oa_flavor; } ;
struct svc_req {struct svc_rpc_gss_cookedcred* rq_clntcred; TYPE_1__ rq_cred; } ;
typedef  TYPE_2__ rpc_gss_ucred_t ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ RPCSEC_GSS ; 
 int TRUE ; 
 struct ucred* FUNC0 () ; 
 struct ucred* FUNC1 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC2 (struct ucred*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prison0 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct svc_req *req, struct ucred **crp, int *flavorp)
{
	struct ucred *cr;
	struct svc_rpc_gss_cookedcred *cc;
	struct svc_rpc_gss_client *client;
	rpc_gss_ucred_t *uc;

	if (req->rq_cred.oa_flavor != RPCSEC_GSS)
		return (FALSE);

	cc = req->rq_clntcred;
	client = cc->cc_client;

	if (flavorp)
		*flavorp = client->cl_rpcflavor;

	if (client->cl_cred) {
		*crp = FUNC1(client->cl_cred);
		return (TRUE);
	}

	uc = &client->cl_ucred;
	cr = client->cl_cred = FUNC0();
	cr->cr_uid = cr->cr_ruid = cr->cr_svuid = uc->uid;
	cr->cr_rgid = cr->cr_svgid = uc->gid;
	FUNC2(cr, uc->gidlen, uc->gidlist);
	cr->cr_prison = &prison0;
	FUNC3(cr->cr_prison);
	*crp = FUNC1(cr);

	return (TRUE);
}