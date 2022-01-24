#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {struct ifnet* ifa_ifp; } ;
struct in6_ifaddr {int /*<<< orphan*/  ia_prefixmask; int /*<<< orphan*/  ia_addr; TYPE_1__ ia_ifa; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  LLE_IFADDR ; 
 int /*<<< orphan*/  LLE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_in6*,int /*<<< orphan*/ *,int) ; 

void
FUNC4(struct in6_ifaddr *ia, int all)
{
	struct sockaddr_in6 mask, addr;
	struct sockaddr *saddr, *smask;
	struct ifnet *ifp;

	ifp = ia->ia_ifa.ifa_ifp;
	FUNC3(&addr, &ia->ia_addr, sizeof(ia->ia_addr));
	FUNC3(&mask, &ia->ia_prefixmask, sizeof(ia->ia_prefixmask));
	saddr = (struct sockaddr *)&addr;
	smask = (struct sockaddr *)&mask;

	if (all != 0)
		FUNC2(AF_INET6, saddr, smask, LLE_STATIC);
	else
		FUNC1(FUNC0(ifp), LLE_IFADDR, saddr);
}