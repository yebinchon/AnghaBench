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
struct ifvlan {scalar_t__ ifv_trunk; } ;
struct ifnet {scalar_t__ if_type; struct ifvlan* if_softc; } ;

/* Variables and functions */
 scalar_t__ IFT_L2VLAN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct ifnet* FUNC1 (struct ifvlan*) ; 

__attribute__((used)) static struct ifnet  *
FUNC2(struct ifnet *ifp)
{
	struct ifvlan *ifv;

	FUNC0();

	if (ifp->if_type != IFT_L2VLAN)
		return (NULL);

	ifv = ifp->if_softc;
	ifp = NULL;
	if (ifv->ifv_trunk)
		ifp = FUNC1(ifv);
	return (ifp);
}