#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct svc_req {int /*<<< orphan*/  rq_xprt; } ;
struct sockaddr {int dummy; } ;
struct nlm4_holder {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  holder; } ;
struct TYPE_9__ {TYPE_1__ nlm4_testrply_u; int /*<<< orphan*/  stat; } ;
struct TYPE_10__ {TYPE_2__ stat; int /*<<< orphan*/  cookie; } ;
typedef  TYPE_3__ nlm4_testres ;
struct TYPE_11__ {int /*<<< orphan*/  cookie; int /*<<< orphan*/  exclusive; int /*<<< orphan*/  alock; } ;
typedef  TYPE_4__ nlm4_testargs ;
struct TYPE_12__ {struct sockaddr* buf; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  LOCK_V4 ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  NLM4_TEST_RES ; 
 int /*<<< orphan*/  NLM_VERS4 ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,char*,struct timeval) ; 
 int debug_level ; 
 int /*<<< orphan*/ * FUNC1 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct svc_req*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct nlm4_holder*,int) ; 
 int /*<<< orphan*/  nlm4_denied ; 
 int /*<<< orphan*/  nlm4_granted ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 struct nlm4_holder* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ xdr_nlm4_testres ; 
 scalar_t__ xdr_void ; 

void *
FUNC7(nlm4_testargs *arg, struct svc_req *rqstp)
{
	nlm4_testres res;
	static char dummy;
	struct sockaddr *addr;
	CLIENT *cli;
	int success;
	struct timeval timeo;
	struct nlm4_holder *holder;

	if (debug_level)
		FUNC2("nlm4_test_msg", rqstp);

	holder = FUNC6(&arg->alock, arg->exclusive, LOCK_V4);

	res.cookie = arg->cookie;
	if (holder == NULL) {
		res.stat.stat = nlm4_granted;
	} else {
		res.stat.stat = nlm4_denied;
		FUNC3(&res.stat.nlm4_testrply_u.holder, holder,
		    sizeof(struct nlm4_holder));
	}

	/*
	 * nlm_test has different result type to the other operations, so
	 * can't use transmit4_result() in this case
	 */
	addr = FUNC4(rqstp->rq_xprt)->buf;
	if ((cli = FUNC1(addr, NLM_VERS4)) != NULL) {
		timeo.tv_sec = 0; /* No timeout - not expecting response */
		timeo.tv_usec = 0;

		success = FUNC0(cli, NLM4_TEST_RES,
		    (xdrproc_t)xdr_nlm4_testres, &res,
		    (xdrproc_t)xdr_void, &dummy, timeo);

		if (debug_level > 2)
			FUNC5(LOG_DEBUG, "clnt_call returns %d", success);
	}
	return (NULL);
}