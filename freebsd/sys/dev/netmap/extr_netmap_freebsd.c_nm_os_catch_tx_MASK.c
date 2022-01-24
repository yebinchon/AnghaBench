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
struct netmap_adapter {int /*<<< orphan*/  if_transmit; } ;
struct TYPE_2__ {struct netmap_adapter up; } ;
struct netmap_generic_adapter {TYPE_1__ up; } ;
struct ifnet {int /*<<< orphan*/  if_transmit; } ;

/* Variables and functions */
 struct ifnet* FUNC0 (struct netmap_generic_adapter*) ; 
 int /*<<< orphan*/  netmap_transmit ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

int
FUNC3(struct netmap_generic_adapter *gna, int intercept)
{
	struct netmap_adapter *na = &gna->up.up;
	struct ifnet *ifp = FUNC0(gna);

	FUNC1();
	if (intercept) {
		na->if_transmit = ifp->if_transmit;
		ifp->if_transmit = netmap_transmit;
	} else {
		ifp->if_transmit = na->if_transmit;
	}
	FUNC2();

	return 0;
}