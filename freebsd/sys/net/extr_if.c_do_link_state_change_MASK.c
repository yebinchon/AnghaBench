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
struct ifnet {int if_link_state; scalar_t__ if_type; int /*<<< orphan*/  if_xname; scalar_t__ if_lagg; int /*<<< orphan*/  (* if_bridge_linkstate ) (struct ifnet*) ;scalar_t__ if_bridge; scalar_t__ if_carp; int /*<<< orphan*/ * if_l2com; int /*<<< orphan*/ * if_vlantrunk; int /*<<< orphan*/  if_vnet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ifnet*,int) ; 
 scalar_t__ IFT_ETHER ; 
 scalar_t__ IFT_L2VLAN ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int LINK_STATE_UP ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  curvnet ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,char*,...) ; 
 int /*<<< orphan*/  ifnet_link_event ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,int) ; 
 scalar_t__ log_link_state_change ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC14 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC16(void *arg, int pending)
{
	struct ifnet *ifp;
	int link_state;

	ifp = arg;
	link_state = ifp->if_link_state;

	FUNC1(ifp->if_vnet);
	FUNC9(ifp);
	if (ifp->if_vlantrunk != NULL)
		FUNC15)(ifp);

	if ((ifp->if_type == IFT_ETHER || ifp->if_type == IFT_L2VLAN) &&
	    ifp->if_l2com != NULL)
		FUNC8)(ifp, link_state);
	if (ifp->if_carp)
		FUNC4)(ifp);
	if (ifp->if_bridge)
		ifp->if_bridge_linkstate(ifp);
	if (ifp->if_lagg)
		FUNC7)(ifp, link_state);

	if (FUNC3(curvnet))
		FUNC5("IFNET", ifp->if_xname,
		    (link_state == LINK_STATE_UP) ? "LINK_UP" : "LINK_DOWN",
		    NULL);
	if (pending > 1)
		FUNC6(ifp, "%d link states coalesced\n", pending);
	if (log_link_state_change)
		FUNC6(ifp, "link state changed to %s\n",
		    (link_state == LINK_STATE_UP) ? "UP" : "DOWN" );
	FUNC2(ifnet_link_event, ifp, link_state);
	FUNC0();
}