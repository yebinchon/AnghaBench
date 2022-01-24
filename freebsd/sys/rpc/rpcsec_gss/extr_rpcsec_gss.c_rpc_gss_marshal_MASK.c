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
typedef  void* uint32_t ;
struct rpc_pending_request {void* pr_seq; void* pr_xid; } ;
struct rpc_gss_cred {scalar_t__ gc_proc; scalar_t__ gc_svc; void* gc_seq; } ;
struct rpc_gss_data {scalar_t__ gd_state; struct rpc_gss_cred gd_cred; int /*<<< orphan*/  gd_qop; int /*<<< orphan*/  gd_ctx; int /*<<< orphan*/  gd_mech; int /*<<< orphan*/  gd_lock; int /*<<< orphan*/  gd_reqs; } ;
struct opaque_auth {char* oa_base; void* oa_length; void* oa_flavor; } ;
struct mbuf {int dummy; } ;
struct TYPE_5__ {char* value; void* length; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  credbuf ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;
typedef  scalar_t__ OM_uint32 ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 struct rpc_gss_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_CONTEXT_EXPIRED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rpc_pending_request*,int /*<<< orphan*/ ) ; 
 int MAX_AUTH_BYTES ; 
 void* RPCSEC_GSS ; 
 scalar_t__ RPCSEC_GSS_CONTINUE_INIT ; 
 scalar_t__ RPCSEC_GSS_ESTABLISHED ; 
 scalar_t__ RPCSEC_GSS_INIT ; 
 int /*<<< orphan*/  RPC_GSS_ER_SYSTEMERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XDR_ENCODE ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct opaque_auth _null_auth ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,TYPE_1__*) ; 
 struct rpc_pending_request* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pr_link ; 
 void* FUNC12 (struct rpc_gss_data*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ rpc_gss_svc_none ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct opaque_auth*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct rpc_gss_cred*) ; 
 int /*<<< orphan*/  FUNC18 (struct mbuf**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool_t
FUNC21(AUTH *auth, uint32_t xid, XDR *xdrs, struct mbuf *args)
{
	struct rpc_gss_data	*gd;
	struct rpc_pending_request *pr;
	uint32_t		 seq;
	XDR			 tmpxdrs;
	struct rpc_gss_cred	 gsscred;
	char			 credbuf[MAX_AUTH_BYTES];
	struct opaque_auth	 creds, verf;
	gss_buffer_desc		 rpcbuf, checksum;
	OM_uint32		 maj_stat, min_stat;
	bool_t			 xdr_stat;

	FUNC14("in rpc_gss_marshal()");

	gd = FUNC0(auth);
	
	gsscred = gd->gd_cred;
	seq = FUNC12(gd);
	gsscred.gc_seq = seq;

	FUNC20(&tmpxdrs, credbuf, sizeof(credbuf), XDR_ENCODE);
	if (!FUNC17(&tmpxdrs, &gsscred)) {
		FUNC2(&tmpxdrs);
		FUNC6(RPC_GSS_ER_SYSTEMERROR, ENOMEM);
		return (FALSE);
	}
	creds.oa_flavor = RPCSEC_GSS;
	creds.oa_base = credbuf;
	creds.oa_length = FUNC3(&tmpxdrs);
	FUNC2(&tmpxdrs);

	FUNC16(xdrs, &creds);

	if (gd->gd_cred.gc_proc == RPCSEC_GSS_INIT ||
	    gd->gd_cred.gc_proc == RPCSEC_GSS_CONTINUE_INIT) {
		if (!FUNC16(xdrs, &_null_auth)) {
			FUNC6(RPC_GSS_ER_SYSTEMERROR, ENOMEM);
			return (FALSE);
		}
		FUNC19(xdrs, args);
		return (TRUE);
	} else {
		/*
		 * Keep track of this XID + seq pair so that we can do
		 * the matching gss_verify_mic in AUTH_VALIDATE.
		 */
		pr = FUNC9(sizeof(struct rpc_pending_request));
		FUNC10(&gd->gd_lock);
		pr->pr_xid = xid;
		pr->pr_seq = seq;
		FUNC1(&gd->gd_reqs, pr, pr_link);
		FUNC11(&gd->gd_lock);

		/*
		 * Checksum serialized RPC header, up to and including
		 * credential. For the in-kernel environment, we
		 * assume that our XDR stream is on a contiguous
		 * memory buffer (e.g. an mbuf).
		 */
		rpcbuf.length = FUNC3(xdrs);
		FUNC5(xdrs, 0);
		rpcbuf.value = FUNC4(xdrs, rpcbuf.length);

		maj_stat = FUNC7(&min_stat, gd->gd_ctx, gd->gd_qop,
		    &rpcbuf, &checksum);

		if (maj_stat != GSS_S_COMPLETE) {
			FUNC15("gss_get_mic", gd->gd_mech,
			    maj_stat, min_stat);
			if (maj_stat == GSS_S_CONTEXT_EXPIRED) {
				FUNC13(auth, TRUE);
			}
			FUNC6(RPC_GSS_ER_SYSTEMERROR, EPERM);
			return (FALSE);
		}

		verf.oa_flavor = RPCSEC_GSS;
		verf.oa_base = checksum.value;
		verf.oa_length = checksum.length;

		xdr_stat = FUNC16(xdrs, &verf);
		FUNC8(&min_stat, &checksum);
		if (!xdr_stat) {
			FUNC6(RPC_GSS_ER_SYSTEMERROR, ENOMEM);
			return (FALSE);
		}
		if (gd->gd_state != RPCSEC_GSS_ESTABLISHED ||
		    gd->gd_cred.gc_svc == rpc_gss_svc_none) {
			FUNC19(xdrs, args);
			return (TRUE);
		} else {
			if (!FUNC18(&args,
				gd->gd_ctx, gd->gd_qop, gd->gd_cred.gc_svc,
				seq))
				return (FALSE);
			FUNC19(xdrs, args);
			return (TRUE);
		}
	}

	return (TRUE);
}