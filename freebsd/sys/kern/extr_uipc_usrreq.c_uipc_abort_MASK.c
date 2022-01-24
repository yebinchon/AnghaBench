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
struct unpcb {struct unpcb* unp_conn; } ;
struct socket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct unpcb*) ; 
 struct unpcb* FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC6 (struct unpcb*) ; 

__attribute__((used)) static void
FUNC7(struct socket *so)
{
	struct unpcb *unp, *unp2;

	unp = FUNC4(so);
	FUNC0(unp != NULL, ("uipc_abort: unp == NULL"));
	FUNC3(unp);

	FUNC1(unp);
	unp2 = unp->unp_conn;
	if (unp2 != NULL) {
		FUNC6(unp2);
		FUNC2(unp);
		FUNC5(unp2);
	} else
		FUNC2(unp);
}