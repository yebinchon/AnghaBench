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

/* Variables and functions */
 scalar_t__ FUNC0 (struct in6_addr const*) ; 
 scalar_t__ FUNC1 (struct in6_addr const*) ; 
 scalar_t__ FUNC2 (struct in6_addr const*) ; 
 scalar_t__ FUNC3 (struct in6_addr const*) ; 
 int FUNC4 (struct in6_addr const*) ; 
 int IPV6_ADDR_SCOPE_GLOBAL ; 
 int IPV6_ADDR_SCOPE_LINKLOCAL ; 
 int IPV6_ADDR_SCOPE_SITELOCAL ; 

int
FUNC5(const struct in6_addr *addr)
{

	if (FUNC2(addr)) {
		/*
		 * Addresses with reserved value F must be treated as
		 * global multicast addresses.
		 */
		if (FUNC4(addr) == 0x0f)
			return (IPV6_ADDR_SCOPE_GLOBAL);
		return (FUNC4(addr));
	}
	if (FUNC0(addr) ||
	    FUNC1(addr))
		return (IPV6_ADDR_SCOPE_LINKLOCAL);
	if (FUNC3(addr))
		return (IPV6_ADDR_SCOPE_SITELOCAL);
	return (IPV6_ADDR_SCOPE_GLOBAL);
}