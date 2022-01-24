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
struct unpcb {struct unpcb* unp_conn; struct socket* unp_socket; } ;
struct socket {int /*<<< orphan*/  so_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  FUNC0 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct unpcb*,struct unpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct unpcb*,struct unpcb*,int) ; 
 scalar_t__ FUNC5 (struct unpcb*) ; 

__attribute__((used)) static void
FUNC6(struct unpcb *unp)
{
	struct socket *so = unp->unp_socket;
	struct unpcb *unp2;
	int freed;

	/*
	 * Regardless of whether the socket's peer dropped the connection
	 * with this socket by aborting or disconnecting, POSIX requires
	 * that ECONNRESET is returned.
	 */
	/* acquire a reference so that unp isn't freed from underneath us */

	FUNC0(unp);
	if (so)
		so->so_error = ECONNRESET;
	unp2 = unp->unp_conn;
	if (unp2 == unp) {
		FUNC2(unp, unp2);
	} else if (unp2 != NULL) {
		FUNC3(unp2);
		FUNC4(unp, unp2, freed);
		FUNC2(unp, unp2);
		if (FUNC5(unp2) == 0)
			FUNC1(unp2);
	}
	if (FUNC5(unp) == 0)
		FUNC1(unp);
}