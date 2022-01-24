#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  so_rcv; } ;
struct TYPE_6__ {scalar_t__ xp_netid; TYPE_4__* xp_socket; int /*<<< orphan*/  xp_lock; } ;
typedef  TYPE_1__ SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SO_RCV ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(SVCXPRT *xprt)
{

	FUNC0(&xprt->xp_socket->so_rcv);
	FUNC4(xprt->xp_socket, SO_RCV);
	FUNC1(&xprt->xp_socket->so_rcv);

	FUNC7(&xprt->xp_lock);
	if (xprt->xp_socket)
		(void)FUNC3(xprt->xp_socket);

	if (xprt->xp_netid)
		(void) FUNC2(xprt->xp_netid, FUNC5(xprt->xp_netid) + 1);
	FUNC6(xprt);
}