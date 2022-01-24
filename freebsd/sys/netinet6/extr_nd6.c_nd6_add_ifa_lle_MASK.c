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
struct sockaddr {int dummy; } ;
struct llentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifa_rtrequest; struct ifnet* ifa_ifp; } ;
struct in6_ifaddr {int /*<<< orphan*/  ia_addr; TYPE_1__ ia_ifa; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct llentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  LLENTRY_EXPIRED ; 
 int /*<<< orphan*/  LLENTRY_RESOLVED ; 
 int /*<<< orphan*/  LLE_EXCLUSIVE ; 
 int /*<<< orphan*/  LLE_IFADDR ; 
 int /*<<< orphan*/  FUNC3 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 struct llentry* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*) ; 
 int /*<<< orphan*/  lle_event ; 
 int /*<<< orphan*/  FUNC7 (struct llentry*) ; 
 struct llentry* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct llentry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct llentry*) ; 
 scalar_t__ FUNC11 (struct ifnet*) ; 
 int /*<<< orphan*/  nd6_rtrequest ; 

int
FUNC12(struct in6_ifaddr *ia)
{
	struct ifnet *ifp;
	struct llentry *ln, *ln_tmp;
	struct sockaddr *dst;

	ifp = ia->ia_ifa.ifa_ifp;
	if (FUNC11(ifp) == 0)
		return (0);

	ia->ia_ifa.ifa_rtrequest = nd6_rtrequest;
	dst = (struct sockaddr *)&ia->ia_addr;
	ln = FUNC8(FUNC5(ifp), LLE_IFADDR, dst);
	if (ln == NULL)
		return (ENOBUFS);

	FUNC1(ifp);
	FUNC3(ln);
	/* Unlink any entry if exists */
	ln_tmp = FUNC6(FUNC5(ifp), LLE_EXCLUSIVE, dst);
	if (ln_tmp != NULL)
		FUNC10(FUNC5(ifp), ln_tmp);
	FUNC9(FUNC5(ifp), ln);
	FUNC2(ifp);

	if (ln_tmp != NULL)
		FUNC0(lle_event, ln_tmp, LLENTRY_EXPIRED);
	FUNC0(lle_event, ln, LLENTRY_RESOLVED);

	FUNC4(ln);
	if (ln_tmp != NULL)
		FUNC7(ln_tmp);

	return (0);
}