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
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct in6_addr*) ; 
 int /*<<< orphan*/  rt6_deleteroute ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

void
FUNC2(struct in6_addr *gateway, struct ifnet *ifp)
{

	/* We'll care only link-local addresses */
	if (!FUNC0(gateway))
		return;

	/* XXX Do we really need to walk any but the default FIB? */
	FUNC1(AF_INET6, rt6_deleteroute, (void *)gateway);
}