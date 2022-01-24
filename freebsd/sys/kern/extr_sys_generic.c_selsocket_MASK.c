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
struct timeval {scalar_t__ tv_sec; int tv_usec; } ;
struct thread {int dummy; } ;
struct socket {int dummy; } ;
typedef  int sbintime_t ;

/* Variables and functions */
 int EINVAL ; 
 int ERESTART ; 
 scalar_t__ INT32_MAX ; 
 int SBT_MAX ; 
 scalar_t__ FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 int FUNC4 (struct thread*,int,int) ; 
 int FUNC5 (struct socket*,int,int /*<<< orphan*/ *,struct thread*) ; 
 int tc_precexp ; 
 scalar_t__ tc_tick_sbt ; 
 int /*<<< orphan*/  FUNC6 (struct timeval*) ; 
 int FUNC7 (struct timeval) ; 

int
FUNC8(struct socket *so, int events, struct timeval *tvp, struct thread *td)
{
	struct timeval rtv;
	sbintime_t asbt, precision, rsbt;
	int error;

	precision = 0;	/* stupid gcc! */
	if (tvp != NULL) {
		rtv = *tvp;
		if (rtv.tv_sec < 0 || rtv.tv_usec < 0 || 
		    rtv.tv_usec >= 1000000)
			return (EINVAL);
		if (!FUNC6(&rtv))
			asbt = 0;
		else if (rtv.tv_sec <= INT32_MAX) {
			rsbt = FUNC7(rtv);
			precision = rsbt;
			precision >>= tc_precexp;
			if (FUNC0(&asbt, rsbt))
				asbt += tc_tick_sbt;
			if (asbt <= SBT_MAX - rsbt)
				asbt += rsbt;
			else
				asbt = -1;
		} else
			asbt = -1;
	} else
		asbt = -1;
	FUNC3(td);
	/*
	 * Iterate until the timeout expires or the socket becomes ready.
	 */
	for (;;) {
		FUNC1(td, NULL);
		error = FUNC5(so, events, NULL, td);
		/* error here is actually the ready events. */
		if (error)
			return (0);
		error = FUNC4(td, asbt, precision);
		if (error)
			break;
	}
	FUNC2(td);
	/* XXX Duplicates ncp/smb behavior. */
	if (error == ERESTART)
		error = 0;
	return (error);
}