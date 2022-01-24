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
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 struct unpcb* FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct unpcb*,struct unpcb*) ; 
 int /*<<< orphan*/  FUNC7 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC8 (struct unpcb*,struct unpcb*,int) ; 
 scalar_t__ FUNC9 (struct unpcb*) ; 

__attribute__((used)) static int
FUNC10(struct socket *so)
{
	struct unpcb *unp, *unp2;
	int freed;

	unp = FUNC5(so);
	FUNC0(unp != NULL, ("uipc_disconnect: unp == NULL"));

	FUNC1(unp);
	if ((unp2 = unp->unp_conn) == NULL) {
		FUNC2(unp);
		return (0);
	}
	if (FUNC4(unp != unp2)) {
		FUNC8(unp, unp2, freed);
		if (FUNC3(freed)) {
			FUNC2(unp);
			return (0);
		}
		FUNC7(unp2);
	}
	FUNC7(unp);
	FUNC6(unp, unp2);
	if (FUNC9(unp) == 0)
		FUNC2(unp);
	if ((unp != unp2) && FUNC9(unp2) == 0)
		FUNC2(unp2);
	return (0);
}