#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct svc_req {int dummy; } ;
struct nlm_unlockargs {int /*<<< orphan*/  alock; int /*<<< orphan*/  cookie; } ;
typedef  int /*<<< orphan*/  nlm_res ;
struct TYPE_3__ {int /*<<< orphan*/  alock; int /*<<< orphan*/  cookie; } ;
typedef  TYPE_1__ nlm4_unlockargs ;
typedef  int /*<<< orphan*/  nlm4_res ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,struct svc_req*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nlm_zero_tv ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ xdr_nlm_res ; 

bool_t
FUNC6(struct nlm_unlockargs *argp, void *result, struct svc_req *rqstp)
{
	nlm4_unlockargs args4;
	nlm4_res res4;
	nlm_res res;
	CLIENT *rpc;
	char dummy;

	args4.cookie = argp->cookie;
	FUNC1(&args4.alock, &argp->alock);

	if (FUNC3(&args4, &res4, rqstp, &rpc))
		return (FALSE);

	FUNC2(&res, &res4);

	if (rpc) {
		FUNC4(&res, &dummy, rpc, NULL, nlm_zero_tv);
		FUNC0(rpc);
	}
	FUNC5((xdrproc_t) xdr_nlm_res, &res);

	return (FALSE);
}