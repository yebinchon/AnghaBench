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
typedef  int /*<<< orphan*/  xdrproc_t ;
struct svc_req {int rq_proc; } ;
typedef  int /*<<< orphan*/  nlm_shareres ;
typedef  int /*<<< orphan*/  nlm_shareargs ;
typedef  int /*<<< orphan*/  nlm_res ;
typedef  int /*<<< orphan*/  nlm_notify ;
typedef  int /*<<< orphan*/  nlm_lockargs ;
typedef  scalar_t__ caddr_t ;
typedef  scalar_t__ bool_t ;
typedef  int /*<<< orphan*/  argument ;
typedef  int /*<<< orphan*/  SVCXPRT ;

/* Variables and functions */
#define  NLM_CANCEL 147 
#define  NLM_CANCEL_MSG 146 
#define  NLM_CANCEL_RES 145 
#define  NLM_FREE_ALL 144 
#define  NLM_GRANTED 143 
#define  NLM_GRANTED_MSG 142 
#define  NLM_GRANTED_RES 141 
#define  NLM_LOCK 140 
#define  NLM_LOCK_MSG 139 
#define  NLM_LOCK_RES 138 
#define  NLM_NM_LOCK 137 
#define  NLM_SHARE 136 
#define  NLM_TEST 135 
#define  NLM_TEST_MSG 134 
#define  NLM_TEST_RES 133 
#define  NLM_UNLOCK 132 
#define  NLM_UNLOCK_MSG 131 
#define  NLM_UNLOCK_RES 130 
#define  NLM_UNSHARE 129 
#define  NULLPROC 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nlm_free_all_3_svc ; 
 int /*<<< orphan*/  nlm_nm_lock_3_svc ; 
 int /*<<< orphan*/  FUNC1 (struct svc_req*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  nlm_share_3_svc ; 
 int /*<<< orphan*/  nlm_unshare_3_svc ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,void*,struct svc_req*) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_req*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_req*) ; 
 int /*<<< orphan*/  FUNC7 (struct svc_req*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct svc_req*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct svc_req*) ; 
 int /*<<< orphan*/  FUNC10 (struct svc_req*) ; 
 int /*<<< orphan*/  FUNC11 (struct svc_req*) ; 
 int /*<<< orphan*/  xdr_nlm_lockargs ; 
 int /*<<< orphan*/  xdr_nlm_notify ; 
 int /*<<< orphan*/  xdr_nlm_res ; 
 int /*<<< orphan*/  xdr_nlm_shareargs ; 
 int /*<<< orphan*/  xdr_nlm_shareres ; 
 int /*<<< orphan*/  xdr_void ; 

void
FUNC12(struct svc_req *rqstp, SVCXPRT *transp)
{
	union {
		nlm_shareargs nlm_share_3_arg;
		nlm_shareargs nlm_unshare_3_arg;
		nlm_lockargs nlm_nm_lock_3_arg;
		nlm_notify nlm_free_all_3_arg;
	} argument;
	union {
		nlm_shareres nlm_share_3_res;
		nlm_shareres nlm_unshare_3_res;
		nlm_res nlm_nm_lock_3_res;
	} result;
	bool_t retval;
	xdrproc_t xdr_argument, xdr_result;
	bool_t (*local)(char *, void *, struct svc_req *);

	switch (rqstp->rq_proc) {
	case NULLPROC:
		(void) FUNC8(rqstp,
			(xdrproc_t) xdr_void, (char *)NULL);
		FUNC6(rqstp);
		return;

	case NLM_TEST:
	case NLM_LOCK:
	case NLM_CANCEL:
	case NLM_UNLOCK:
	case NLM_GRANTED:
	case NLM_TEST_MSG:
	case NLM_LOCK_MSG:
	case NLM_CANCEL_MSG:
	case NLM_UNLOCK_MSG:
	case NLM_GRANTED_MSG:
	case NLM_TEST_RES:
	case NLM_LOCK_RES:
	case NLM_CANCEL_RES:
	case NLM_UNLOCK_RES:
	case NLM_GRANTED_RES:
		FUNC1(rqstp, transp);
		return;

	case NLM_SHARE:
		xdr_argument = (xdrproc_t) xdr_nlm_shareargs;
		xdr_result = (xdrproc_t) xdr_nlm_shareres;
		local = (bool_t (*) (char *,  void *,  struct svc_req *))nlm_share_3_svc;
		break;

	case NLM_UNSHARE:
		xdr_argument = (xdrproc_t) xdr_nlm_shareargs;
		xdr_result = (xdrproc_t) xdr_nlm_shareres;
		local = (bool_t (*) (char *,  void *,  struct svc_req *))nlm_unshare_3_svc;
		break;

	case NLM_NM_LOCK:
		xdr_argument = (xdrproc_t) xdr_nlm_lockargs;
		xdr_result = (xdrproc_t) xdr_nlm_res;
		local = (bool_t (*) (char *,  void *,  struct svc_req *))nlm_nm_lock_3_svc;
		break;

	case NLM_FREE_ALL:
		xdr_argument = (xdrproc_t) xdr_nlm_notify;
		xdr_result = (xdrproc_t) xdr_void;
		local = (bool_t (*) (char *,  void *,  struct svc_req *))nlm_free_all_3_svc;
		break;

	default:
		FUNC10(rqstp);
		FUNC6(rqstp);
		return;
	}
	(void) FUNC0((char *)&argument, 0, sizeof (argument));
	if (!FUNC7(rqstp, xdr_argument, (char *)(caddr_t) &argument)) {
		FUNC9(rqstp);
		FUNC6(rqstp);
		return;
	}
	retval = (bool_t) (*local)((char *)&argument, (void *)&result, rqstp);
	if (retval > 0 && !FUNC8(rqstp, xdr_result, (char *)&result)) {
		FUNC11(rqstp);
	}
	if (!FUNC5(rqstp, xdr_argument, (char *)(caddr_t) &argument)) {
		FUNC3("unable to free arguments");
		//exit(1);
	}
	FUNC6(rqstp);
	if (!FUNC2(transp, xdr_result, (caddr_t) &result))
		FUNC3("unable to free results");

	return;
}