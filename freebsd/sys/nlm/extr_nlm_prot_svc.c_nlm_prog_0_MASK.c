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
struct nlm_sm_status {int dummy; } ;
typedef  scalar_t__ caddr_t ;
typedef  scalar_t__ bool_t ;
typedef  int /*<<< orphan*/  argument ;
typedef  int /*<<< orphan*/  SVCXPRT ;

/* Variables and functions */
#define  NLM_SM_NOTIFY 129 
#define  NULLPROC 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nlm_sm_notify_0_svc ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,void*,struct svc_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_req*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_req*) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_req*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_req*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct svc_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct svc_req*) ; 
 int /*<<< orphan*/  FUNC9 (struct svc_req*) ; 
 int /*<<< orphan*/  xdr_nlm_sm_status ; 
 int /*<<< orphan*/  xdr_void ; 

void
FUNC10(struct svc_req *rqstp, SVCXPRT *transp)
{
	union {
		struct nlm_sm_status nlm_sm_notify_0_arg;
	} argument;
	char result;
	bool_t retval;
	xdrproc_t xdr_argument, xdr_result;
	bool_t (*local)(char *, void *, struct svc_req *);

	switch (rqstp->rq_proc) {
	case NULLPROC:
		(void) FUNC6(rqstp,
			(xdrproc_t) xdr_void, (char *)NULL);
		FUNC4(rqstp);
		return;

	case NLM_SM_NOTIFY:
		xdr_argument = (xdrproc_t) xdr_nlm_sm_status;
		xdr_result = (xdrproc_t) xdr_void;
		local = (bool_t (*) (char *,  void *,  struct svc_req *))nlm_sm_notify_0_svc;
		break;

	default:
		FUNC8(rqstp);
		FUNC4(rqstp);
		return;
	}
	(void) FUNC0((char *)&argument, 0, sizeof (argument));
	if (!FUNC5(rqstp, xdr_argument, (char *)(caddr_t) &argument)) {
		FUNC7(rqstp);
		FUNC4(rqstp);
		return;
	}
	retval = (bool_t) (*local)((char *)&argument, (void *)&result, rqstp);
	if (retval > 0 && !FUNC6(rqstp, xdr_result, (char *)&result)) {
		FUNC9(rqstp);
	}
	if (!FUNC3(rqstp, xdr_argument, (char *)(caddr_t) &argument)) {
		FUNC1("unable to free arguments");
		//exit(1);
	}
	FUNC4(rqstp);

	return;
}