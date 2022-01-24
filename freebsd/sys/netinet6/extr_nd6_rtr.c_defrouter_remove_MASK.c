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
struct nd_defrouter {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct nd_defrouter*) ; 
 struct nd_defrouter* FUNC3 (struct in6_addr*,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct nd_defrouter*) ; 
 int /*<<< orphan*/  FUNC5 (struct nd_defrouter*,int /*<<< orphan*/ *) ; 

bool
FUNC6(struct in6_addr *addr, struct ifnet *ifp)
{
	struct nd_defrouter *dr;

	FUNC0();
	dr = FUNC3(addr, ifp);
	if (dr == NULL) {
		FUNC1();
		return (false);
	}

	FUNC5(dr, NULL);
	FUNC1();
	FUNC2(dr);
	FUNC4(dr);
	return (true);
}