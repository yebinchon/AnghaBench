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
 struct nd_defrouter* FUNC2 (struct in6_addr*,struct ifnet*) ; 

struct nd_defrouter *
FUNC3(struct in6_addr *addr, struct ifnet *ifp)
{
	struct nd_defrouter *dr;

	FUNC0();
	dr = FUNC2(addr, ifp);
	FUNC1();
	return (dr);
}