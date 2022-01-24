#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct svc_rpc_gss_cookedcred {scalar_t__ cc_service; scalar_t__ cc_seq; struct svc_rpc_gss_client* cc_client; } ;
struct svc_rpc_gss_clientid {int dummy; } ;
struct TYPE_10__ {scalar_t__ service; int /*<<< orphan*/  mechanism; void* qop; } ;
struct svc_rpc_gss_client {void* cl_qop; TYPE_5__ cl_rawcred; int /*<<< orphan*/  cl_locked; int /*<<< orphan*/  cl_lock; int /*<<< orphan*/  cl_done_callback; int /*<<< orphan*/  cl_refs; int /*<<< orphan*/  cl_state; } ;
struct TYPE_9__ {struct svc_rpc_gss_cookedcred* svc_ah_private; int /*<<< orphan*/ * svc_ah_ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  oa_length; int /*<<< orphan*/  oa_base; } ;
struct svc_req {int /*<<< orphan*/  rq_proc; TYPE_4__ rq_auth; void* rq_verf; struct svc_rpc_gss_cookedcred* rq_clntcred; TYPE_1__ rq_cred; } ;
struct TYPE_8__ {void* cb_verf; } ;
struct rpc_msg {TYPE_3__ rm_call; } ;
struct TYPE_7__ {scalar_t__ length; struct svc_rpc_gss_clientid* value; } ;
struct rpc_gss_init_res {scalar_t__ gc_version; int gc_proc; scalar_t__ gc_svc; scalar_t__ gc_seq; scalar_t__ gr_win; int /*<<< orphan*/  gr_major; int /*<<< orphan*/  gr_token; TYPE_2__ gc_handle; } ;
struct rpc_gss_cred {scalar_t__ gc_version; int gc_proc; scalar_t__ gc_svc; scalar_t__ gc_seq; scalar_t__ gr_win; int /*<<< orphan*/  gr_major; int /*<<< orphan*/  gr_token; TYPE_2__ gc_handle; } ;
typedef  void* gss_qop_t ;
typedef  int /*<<< orphan*/  gr ;
typedef  int /*<<< orphan*/  gc ;
typedef  enum auth_stat { ____Placeholder_auth_stat } auth_stat ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  XDR ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int AUTH_BADCRED ; 
 int AUTH_BADVERF ; 
 int AUTH_FAILED ; 
 int AUTH_OK ; 
 int AUTH_REJECTEDCRED ; 
 int /*<<< orphan*/  CLIENT_ESTABLISHED ; 
 int /*<<< orphan*/  GSS_S_COMPLETE ; 
 scalar_t__ MAXSEQ ; 
 int /*<<< orphan*/  NULLPROC ; 
#define  RPCSEC_GSS_CONTINUE_INIT 131 
 int RPCSEC_GSS_CREDPROBLEM ; 
 int RPCSEC_GSS_CTXPROBLEM ; 
#define  RPCSEC_GSS_DATA 130 
#define  RPCSEC_GSS_DESTROY 129 
#define  RPCSEC_GSS_INIT 128 
 int RPCSEC_GSS_NODISPATCH ; 
 scalar_t__ RPCSEC_GSS_VERSION ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XDR_DECODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* _null_auth ; 
 void* FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_gss_init_res*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ rpc_gss_svc_integrity ; 
 scalar_t__ rpc_gss_svc_none ; 
 scalar_t__ rpc_gss_svc_privacy ; 
 int /*<<< orphan*/  svc_auth_gss_ops ; 
 int /*<<< orphan*/  FUNC6 (struct svc_rpc_gss_client*,struct svc_req*,struct rpc_gss_init_res*,struct rpc_gss_init_res*) ; 
 int /*<<< orphan*/  FUNC7 (struct svc_rpc_gss_client*,struct svc_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct svc_rpc_gss_client*,scalar_t__) ; 
 struct svc_rpc_gss_client* FUNC9 () ; 
 struct svc_rpc_gss_client* FUNC10 (struct svc_rpc_gss_clientid*) ; 
 int /*<<< orphan*/  FUNC11 (struct svc_rpc_gss_client*) ; 
 int /*<<< orphan*/  FUNC12 (struct svc_rpc_gss_client*,struct svc_req*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct svc_rpc_gss_client*) ; 
 int /*<<< orphan*/  FUNC14 (struct svc_rpc_gss_client*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct svc_rpc_gss_client*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct svc_rpc_gss_client*,struct rpc_msg*,void**,int) ; 
 int FUNC18 (struct svc_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,struct rpc_gss_init_res*) ; 
 scalar_t__ xdr_rpc_gss_init_res ; 
 scalar_t__ xdr_void ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

enum auth_stat
FUNC24(struct svc_req *rqst, struct rpc_msg *msg)

{
	OM_uint32		 min_stat;
	XDR	 		 xdrs;
	struct svc_rpc_gss_cookedcred *cc;
	struct svc_rpc_gss_client *client;
	struct rpc_gss_cred	 gc;
	struct rpc_gss_init_res	 gr;
	gss_qop_t		 qop;
	int			 call_stat;
	enum auth_stat		 result;
	
	FUNC5("in svc_rpc_gss()");
	
	/* Garbage collect old clients. */
	FUNC15();

	/* Initialize reply. */
	rqst->rq_verf = _null_auth;

	/* Deserialize client credentials. */
	if (rqst->rq_cred.oa_length <= 0)
		return (AUTH_BADCRED);
	
	FUNC3(&gc, 0, sizeof(gc));
	
	FUNC23(&xdrs, rqst->rq_cred.oa_base,
	    rqst->rq_cred.oa_length, XDR_DECODE);
	
	if (!FUNC22(&xdrs, &gc)) {
		FUNC0(&xdrs);
		return (AUTH_BADCRED);
	}
	FUNC0(&xdrs);

	client = NULL;

	/* Check version. */
	if (gc.gc_version != RPCSEC_GSS_VERSION) {
		result = AUTH_BADCRED;
		goto out;
	}

	/* Check the proc and find the client (or create it) */
	if (gc.gc_proc == RPCSEC_GSS_INIT) {
		if (gc.gc_handle.length != 0) {
			result = AUTH_BADCRED;
			goto out;
		}
		client = FUNC9();
	} else {
		struct svc_rpc_gss_clientid *p;
		if (gc.gc_handle.length != sizeof(*p)) {
			result = AUTH_BADCRED;
			goto out;
		}
		p = gc.gc_handle.value;
		client = FUNC10(p);
		if (!client) {
			/*
			 * Can't find the client - we may have
			 * destroyed it - tell the other side to
			 * re-authenticate.
			 */
			result = RPCSEC_GSS_CREDPROBLEM;
			goto out;
		}
	}
	cc = rqst->rq_clntcred;
	cc->cc_client = client;
	cc->cc_service = gc.gc_svc;
	cc->cc_seq = gc.gc_seq;

	/*
	 * The service and sequence number must be ignored for
	 * RPCSEC_GSS_INIT and RPCSEC_GSS_CONTINUE_INIT.
	 */
	if (gc.gc_proc != RPCSEC_GSS_INIT
	    && gc.gc_proc != RPCSEC_GSS_CONTINUE_INIT) {
		/*
		 * Check for sequence number overflow.
		 */
		if (gc.gc_seq >= MAXSEQ) {
			result = RPCSEC_GSS_CTXPROBLEM;
			goto out;
		}

		/*
		 * Check for valid service.
		 */
		if (gc.gc_svc != rpc_gss_svc_none &&
		    gc.gc_svc != rpc_gss_svc_integrity &&
		    gc.gc_svc != rpc_gss_svc_privacy) {
			result = AUTH_BADCRED;
			goto out;
		}
	}

	/* Handle RPCSEC_GSS control procedure. */
	switch (gc.gc_proc) {

	case RPCSEC_GSS_INIT:
	case RPCSEC_GSS_CONTINUE_INIT:
		if (rqst->rq_proc != NULLPROC) {
			result = AUTH_REJECTEDCRED;
			break;
		}

		FUNC3(&gr, 0, sizeof(gr));
		if (!FUNC6(client, rqst, &gr, &gc)) {
			result = AUTH_REJECTEDCRED;
			break;
		}

		if (gr.gr_major == GSS_S_COMPLETE) {
			/*
			 * We borrow the space for the call verf to
			 * pack our reply verf.
			 */
			rqst->rq_verf = msg->rm_call.cb_verf;
			if (!FUNC12(client, rqst, gr.gr_win)) {
				result = AUTH_REJECTEDCRED;
				break;
			}
		} else {
			rqst->rq_verf = _null_auth;
		}
		
		call_stat = FUNC18(rqst,
		    (xdrproc_t) xdr_rpc_gss_init_res,
		    (caddr_t) &gr);

		FUNC2(&min_stat, &gr.gr_token);

		if (!call_stat) {
			result = AUTH_FAILED;
			break;
		}

		if (gr.gr_major == GSS_S_COMPLETE)
			client->cl_state = CLIENT_ESTABLISHED;

		result = RPCSEC_GSS_NODISPATCH;
		break;
		
	case RPCSEC_GSS_DATA:
	case RPCSEC_GSS_DESTROY:
		if (!FUNC8(client, gc.gc_seq)) {
			result = RPCSEC_GSS_NODISPATCH;
			break;
		}

		if (!FUNC17(client, msg, &qop, gc.gc_proc)) {
			result = RPCSEC_GSS_CREDPROBLEM;
			break;
		}
		
		/*
		 * We borrow the space for the call verf to pack our
		 * reply verf.
		 */
		rqst->rq_verf = msg->rm_call.cb_verf;
		if (!FUNC12(client, rqst, gc.gc_seq)) {
			result = RPCSEC_GSS_CTXPROBLEM;
			break;
		}

		FUNC16(client, gc.gc_seq);

		/*
		 * Change the SVCAUTH ops on the request to point at
		 * our own code so that we can unwrap the arguments
		 * and wrap the result. The caller will re-set this on
		 * every request to point to a set of null wrap/unwrap
		 * methods. Acquire an extra reference to the client
		 * which will be released by svc_rpc_gss_release()
		 * after the request has finished processing.
		 */
		FUNC4(&client->cl_refs);
		rqst->rq_auth.svc_ah_ops = &svc_auth_gss_ops;
		rqst->rq_auth.svc_ah_private = cc;

		if (gc.gc_proc == RPCSEC_GSS_DATA) {
			/*
			 * We might be ready to do a callback to the server to
			 * see if it wants to accept/reject the connection.
			 */
			FUNC19(&client->cl_lock);
			if (!client->cl_done_callback) {
				client->cl_done_callback = TRUE;
				client->cl_qop = qop;
				client->cl_rawcred.qop = FUNC1(
					client->cl_rawcred.mechanism, qop);
				if (!FUNC7(client, rqst)) {
					result = AUTH_REJECTEDCRED;
					FUNC20(&client->cl_lock);
					break;
				}
			}
			FUNC20(&client->cl_lock);

			/*
			 * If the server has locked this client to a
			 * particular service+qop pair, enforce that
			 * restriction now.
			 */
			if (client->cl_locked) {
				if (client->cl_rawcred.service != gc.gc_svc) {
					result = AUTH_FAILED;
					break;
				} else if (client->cl_qop != qop) {
					result = AUTH_BADVERF;
					break;
				}
			}

			/*
			 * If the qop changed, look up the new qop
			 * name for rawcred.
			 */
			if (client->cl_qop != qop) {
				client->cl_qop = qop;
				client->cl_rawcred.qop = FUNC1(
					client->cl_rawcred.mechanism, qop);
			}

			/*
			 * Make sure we use the right service value
			 * for unwrap/wrap.
			 */
			if (client->cl_rawcred.service != gc.gc_svc) {
				client->cl_rawcred.service = gc.gc_svc;
				FUNC14(client);
			}

			result = AUTH_OK;
		} else {
			if (rqst->rq_proc != NULLPROC) {
				result = AUTH_REJECTEDCRED;
				break;
			}

			call_stat = FUNC18(rqst,
			    (xdrproc_t) xdr_void, (caddr_t) NULL);

			if (!call_stat) {
				result = AUTH_FAILED;
				break;
			}

			FUNC11(client);

			result = RPCSEC_GSS_NODISPATCH;
			break;
		}
		break;

	default:
		result = AUTH_BADCRED;
		break;
	}
out:
	if (client)
		FUNC13(client);

	FUNC21((xdrproc_t) xdr_rpc_gss_cred, (char *) &gc);
	return (result);
}