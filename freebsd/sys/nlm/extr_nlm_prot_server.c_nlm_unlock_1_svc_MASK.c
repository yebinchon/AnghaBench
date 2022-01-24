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
struct svc_req {int dummy; } ;
struct nlm_unlockargs {int /*<<< orphan*/  alock; int /*<<< orphan*/  cookie; } ;
typedef  int /*<<< orphan*/  nlm_res ;
struct TYPE_3__ {int /*<<< orphan*/  alock; int /*<<< orphan*/  cookie; } ;
typedef  TYPE_1__ nlm4_unlockargs ;
typedef  int /*<<< orphan*/  nlm4_res ;
typedef  scalar_t__ bool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,struct svc_req*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool_t
FUNC3(struct nlm_unlockargs *argp, nlm_res *result, struct svc_req *rqstp)
{
	bool_t retval;
	nlm4_unlockargs args4;
	nlm4_res res4;

	args4.cookie = argp->cookie;
	FUNC1(&args4.alock, &argp->alock);

	retval = FUNC0(&args4, &res4, rqstp);
	if (retval)
		FUNC2(result, &res4);

	return (retval);
}