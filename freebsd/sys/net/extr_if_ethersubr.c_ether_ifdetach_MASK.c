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
struct sockaddr_dl {int dummy; } ;
struct ifnet {int /*<<< orphan*/ * if_l2com; TYPE_1__* if_addr; } ;
struct TYPE_2__ {scalar_t__ ifa_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(struct ifnet *ifp)
{
	struct sockaddr_dl *sdl;

	sdl = (struct sockaddr_dl *)(ifp->if_addr->ifa_addr);
	FUNC6(FUNC1(sdl));

	if (ifp->if_l2com != NULL) {
		FUNC0(&ng_ether_detach_p != NULL,
		    ("ng_ether_detach_p is NULL"));
		FUNC4)(ifp);
	}

	FUNC2(ifp);
	FUNC3(ifp);
}