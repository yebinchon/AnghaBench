#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct cf_conn {scalar_t__ mpending; scalar_t__ mreq; } ;
struct TYPE_6__ {int /*<<< orphan*/  so_rcv; } ;
struct TYPE_5__ {TYPE_4__* xp_socket; scalar_t__ xp_upcallset; scalar_t__ xp_p1; } ;
typedef  TYPE_1__ SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SO_RCV ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct cf_conn*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(SVCXPRT *xprt)
{
	struct cf_conn *cd = (struct cf_conn *)xprt->xp_p1;

	FUNC0(&xprt->xp_socket->so_rcv);
	if (xprt->xp_upcallset) {
		xprt->xp_upcallset = 0;
		FUNC4(xprt->xp_socket, SO_RCV);
	}
	FUNC1(&xprt->xp_socket->so_rcv);

	FUNC5(xprt);

	if (cd->mreq)
		FUNC2(cd->mreq);
	if (cd->mpending)
		FUNC2(cd->mpending);
	FUNC3(cd, sizeof(*cd));
}