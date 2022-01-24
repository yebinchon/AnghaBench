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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct llentry {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct sockaddr_in6 const*,struct ifnet*) ; 
 struct llentry* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ifnet*) ; 

int
FUNC5(const struct sockaddr_in6 *addr, struct ifnet *ifp)
{
	struct llentry *lle;
	int rc = 0;

	FUNC2();
	FUNC0(ifp);
	if (FUNC3(addr, ifp))
		return (1);

	/*
	 * Even if the address matches none of our addresses, it might be
	 * in the neighbor cache.
	 */
	if ((lle = FUNC4(&addr->sin6_addr, 0, ifp)) != NULL) {
		FUNC1(lle);
		rc = 1;
	}
	return (rc);
}