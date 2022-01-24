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
typedef  int /*<<< orphan*/  u_short ;
struct ifnet {struct ifaddr* if_addr; } ;
struct ifaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddr*) ; 
 struct ifnet* FUNC2 (int /*<<< orphan*/ ) ; 

struct ifaddr *
FUNC3(u_short idx)
{
	struct ifnet *ifp;
	struct ifaddr *ifa = NULL;

	FUNC0();

	ifp = FUNC2(idx);
	if (ifp != NULL && (ifa = ifp->if_addr) != NULL)
		FUNC1(ifa);
	return (ifa);
}