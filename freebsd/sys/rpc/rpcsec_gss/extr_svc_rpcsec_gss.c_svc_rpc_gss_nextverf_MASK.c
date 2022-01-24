#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct svc_rpc_gss_client {int /*<<< orphan*/  cl_state; int /*<<< orphan*/  cl_mech; int /*<<< orphan*/  cl_qop; int /*<<< orphan*/  cl_ctx; } ;
struct TYPE_6__ {scalar_t__ oa_length; int /*<<< orphan*/  oa_base; int /*<<< orphan*/  oa_flavor; } ;
struct svc_req {TYPE_1__ rq_verf; } ;
typedef  int /*<<< orphan*/  nseq ;
struct TYPE_7__ {int length; int /*<<< orphan*/ * value; } ;
typedef  TYPE_2__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_STALE ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GSS_S_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ MAX_AUTH_BYTES ; 
 int /*<<< orphan*/  RPCSEC_GSS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool_t
FUNC7(struct svc_rpc_gss_client *client,
    struct svc_req *rqst, u_int seq)
{
	gss_buffer_desc		signbuf;
	gss_buffer_desc		mic;
	OM_uint32		maj_stat, min_stat;
	uint32_t		nseq;       

	FUNC5("in svc_rpc_gss_nextverf()");

	nseq = FUNC4(seq);
	signbuf.value = &nseq;
	signbuf.length = sizeof(nseq);

	maj_stat = FUNC2(&min_stat, client->cl_ctx, client->cl_qop,
	    &signbuf, &mic);

	if (maj_stat != GSS_S_COMPLETE) {
		FUNC6("gss_get_mic", client->cl_mech, maj_stat, min_stat);
		client->cl_state = CLIENT_STALE;
		return (FALSE);
	}

	FUNC0(mic.length <= MAX_AUTH_BYTES,
	    ("MIC too large for RPCSEC_GSS"));

	rqst->rq_verf.oa_flavor = RPCSEC_GSS;
	rqst->rq_verf.oa_length = mic.length;
	FUNC1(mic.value, rqst->rq_verf.oa_base, mic.length);

	FUNC3(&min_stat, &mic);
	
	return (TRUE);
}