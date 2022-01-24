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
struct unpcb {int /*<<< orphan*/ * unp_socket; int /*<<< orphan*/  unp_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct unpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct unpcb*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct unpcb*) ; 
 int /*<<< orphan*/  unp_zone ; 

__attribute__((used)) static int
FUNC6(struct unpcb *unp)
{
	int freed;

	FUNC1(unp);
	FUNC0(unp->unp_refcount);
	if ((freed = FUNC4(&unp->unp_refcount))) {
		/* we got here with having detached? */
		FUNC0(unp->unp_socket == NULL);
		FUNC3(unp);
		FUNC2(unp);
		FUNC5(unp_zone, unp);
	}
	return (freed);
}