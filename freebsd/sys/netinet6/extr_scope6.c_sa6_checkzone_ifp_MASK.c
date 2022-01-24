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
struct sockaddr_in6 {scalar_t__ sin6_scope_id; int /*<<< orphan*/  sin6_addr; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int IPV6_ADDR_SCOPE_INTFACELOCAL ; 
 int IPV6_ADDR_SCOPE_LINKLOCAL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct ifnet*,int) ; 
 int FUNC2 (struct sockaddr_in6*) ; 

int
FUNC3(struct ifnet *ifp, struct sockaddr_in6 *sa6)
{
	int scope;

	scope = FUNC0(&sa6->sin6_addr);
	if (scope == IPV6_ADDR_SCOPE_LINKLOCAL ||
	    scope == IPV6_ADDR_SCOPE_INTFACELOCAL) {
		if (sa6->sin6_scope_id == 0) {
			sa6->sin6_scope_id = FUNC1(ifp, scope);
			return (0);
		} else if (sa6->sin6_scope_id != FUNC1(ifp, scope))
			return (EADDRNOTAVAIL);
	}
	return (FUNC2(sa6));
}