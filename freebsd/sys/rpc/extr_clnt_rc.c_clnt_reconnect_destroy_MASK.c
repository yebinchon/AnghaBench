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
struct rc_data {int /*<<< orphan*/  rc_lock; int /*<<< orphan*/  rc_ucred; scalar_t__ rc_backchannel; scalar_t__ rc_client; scalar_t__ cl_private; } ;
typedef  int /*<<< orphan*/  SVCXPRT ;
typedef  struct rc_data CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rc_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(CLIENT *cl)
{
	struct rc_data *rc = (struct rc_data *)cl->cl_private;
	SVCXPRT *xprt;

	if (rc->rc_client)
		FUNC0(rc->rc_client);
	if (rc->rc_backchannel) {
		xprt = (SVCXPRT *)rc->rc_backchannel;
		FUNC5(xprt);
		FUNC1(xprt);
	}
	FUNC2(rc->rc_ucred);
	FUNC4(&rc->rc_lock);
	FUNC3(rc, sizeof(*rc));
	FUNC3(cl, sizeof (CLIENT));
}