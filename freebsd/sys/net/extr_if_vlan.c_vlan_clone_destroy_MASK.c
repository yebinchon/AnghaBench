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
struct ifvlan {int /*<<< orphan*/  lladdr_task; } ;
struct ifnet {int if_dunit; struct ifvlan* if_softc; } ;
struct if_clone {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_VLAN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifvlan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct if_clone*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 

__attribute__((used)) static int
FUNC7(struct if_clone *ifc, struct ifnet *ifp)
{
	struct ifvlan *ifv = ifp->if_softc;
	int unit = ifp->if_dunit;

	FUNC1(ifp);	/* first, remove it from system-wide lists */
	FUNC6(ifp);	/* now it can be unconfigured and freed */
	/*
	 * We should have the only reference to the ifv now, so we can now
	 * drain any remaining lladdr task before freeing the ifnet and the
	 * ifvlan.
	 */
	FUNC5(taskqueue_thread, &ifv->lladdr_task);
	FUNC0();
	FUNC3(ifp);
	FUNC2(ifv, M_VLAN);
	FUNC4(ifc, unit);

	return (0);
}