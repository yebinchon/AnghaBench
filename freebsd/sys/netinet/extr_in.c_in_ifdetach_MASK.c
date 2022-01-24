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
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  V_ripcbinfo ; 
 int /*<<< orphan*/  V_udbinfo ; 
 int /*<<< orphan*/  V_ulitecbinfo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 

void
FUNC4(struct ifnet *ifp)
{
	FUNC0();
	FUNC2(&V_ripcbinfo, ifp);
	FUNC2(&V_udbinfo, ifp);
	FUNC2(&V_ulitecbinfo, ifp);
	FUNC3(ifp);
	FUNC1();
}