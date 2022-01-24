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
struct netmap_adapter {scalar_t__ num_tx_rings; scalar_t__ num_rx_rings; int na_flags; int /*<<< orphan*/  num_rx_desc; int /*<<< orphan*/  num_tx_desc; int /*<<< orphan*/ * nm_dtor; int /*<<< orphan*/  nm_register; struct netmap_adapter* name; struct ifnet* ifp; } ;
struct netmap_hw_adapter {struct netmap_adapter up; int /*<<< orphan*/  nm_hw_register; } ;
struct ifnet {int /*<<< orphan*/  if_xname; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int NAF_HOST_RINGS ; 
 int NAF_NATIVE ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct netmap_adapter*) ; 
 int NM_DEBUG_ON ; 
 scalar_t__ FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,char*,struct ifnet*,int /*<<< orphan*/ ,struct netmap_hw_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct netmap_adapter*) ; 
 scalar_t__ FUNC4 (struct netmap_adapter*) ; 
 int netmap_debug ; 
 int /*<<< orphan*/ * netmap_hw_dtor ; 
 int /*<<< orphan*/  netmap_hw_reg ; 
 int /*<<< orphan*/  FUNC5 (struct netmap_hw_adapter*) ; 
 struct netmap_hw_adapter* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct netmap_adapter*,int /*<<< orphan*/ ,int) ; 

int
FUNC10(struct netmap_adapter *arg, size_t size, int override_reg)
{
	struct netmap_hw_adapter *hwna = NULL;
	struct ifnet *ifp = NULL;

	if (size < sizeof(struct netmap_hw_adapter)) {
		if (netmap_debug & NM_DEBUG_ON)
			FUNC8("Invalid netmap adapter size %d", (int)size);
		return EINVAL;
	}

	if (arg == NULL || arg->ifp == NULL) {
		if (netmap_debug & NM_DEBUG_ON)
			FUNC8("either arg or arg->ifp is NULL");
		return EINVAL;
	}

	if (arg->num_tx_rings == 0 || arg->num_rx_rings == 0) {
		if (netmap_debug & NM_DEBUG_ON)
			FUNC8("%s: invalid rings tx %d rx %d",
				arg->name, arg->num_tx_rings, arg->num_rx_rings);
		return EINVAL;
	}

	ifp = arg->ifp;
	if (FUNC1(ifp)) {
		/* If NA(ifp) is not null but there is no valid netmap
		 * adapter it means that someone else is using the same
		 * pointer (e.g. ax25_ptr on linux). This happens for
		 * instance when also PF_RING is in use. */
		FUNC8("Error: netmap adapter hook is busy");
		return EBUSY;
	}

	hwna = FUNC6(size);
	if (hwna == NULL)
		goto fail;
	hwna->up = *arg;
	hwna->up.na_flags |= NAF_HOST_RINGS | NAF_NATIVE;
	FUNC9(hwna->up.name, ifp->if_xname, sizeof(hwna->up.name));
	if (override_reg) {
		hwna->nm_hw_register = hwna->up.nm_register;
		hwna->up.nm_register = netmap_hw_reg;
	}
	if (FUNC4(&hwna->up)) {
		FUNC5(hwna);
		goto fail;
	}
	FUNC3(&hwna->up);

	FUNC0(ifp, &hwna->up);

	FUNC7(ifp);

	if (arg->nm_dtor == NULL) {
		hwna->up.nm_dtor = netmap_hw_dtor;
	}

	FUNC2(ifp, "netmap queues/slots: TX %d/%d, RX %d/%d\n",
	    hwna->up.num_tx_rings, hwna->up.num_tx_desc,
	    hwna->up.num_rx_rings, hwna->up.num_rx_desc);
	return 0;

fail:
	FUNC8("fail, arg %p ifp %p na %p", arg, ifp, hwna);
	return (hwna ? EINVAL : ENOMEM);
}