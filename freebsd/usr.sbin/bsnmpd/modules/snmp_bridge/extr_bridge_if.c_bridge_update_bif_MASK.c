#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ifmd_flags; } ;
struct mibif {TYPE_2__ mib; int /*<<< orphan*/ * physaddr; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  octet; } ;
struct bridge_if {int /*<<< orphan*/  entry_age; int /*<<< orphan*/  num_ports; int /*<<< orphan*/  if_status; TYPE_1__ br_addr; int /*<<< orphan*/  bif_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int IFF_RUNNING ; 
 int /*<<< orphan*/  RowStatus_active ; 
 int /*<<< orphan*/  RowStatus_notInService ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bridge_if*) ; 
 int /*<<< orphan*/  FUNC3 (struct bridge_if*) ; 
 int /*<<< orphan*/  FUNC4 (struct bridge_if*) ; 
 int /*<<< orphan*/  FUNC5 (struct bridge_if*) ; 
 int /*<<< orphan*/  FUNC6 (struct bridge_if*) ; 
 struct mibif* FUNC7 () ; 
 struct mibif* FUNC8 (struct mibif*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct bridge_if *bif)
{
	struct mibif *ifp;

	/* Walk through the mibII interface list. */
	for (ifp = FUNC7(); ifp != NULL; ifp = FUNC8(ifp))
		if (FUNC9(ifp->name, bif->bif_name) == 0)
			break;

	if (ifp == NULL) {
		/* Ops, we do not exist anymore. */
		FUNC4(bif);
		return (0);
	}

	if (ifp->physaddr != NULL )
		FUNC0(ifp->physaddr, bif->br_addr.octet, ETHER_ADDR_LEN);
	else
		FUNC1(bif->bif_name, bif->br_addr.octet,
		    ETHER_ADDR_LEN);

	if (ifp->mib.ifmd_flags & IFF_RUNNING)
		bif->if_status = RowStatus_active;
	else
		bif->if_status = RowStatus_notInService;

	switch (FUNC2(bif)) {
		case 2:
			FUNC3(bif);
			break;
		case 1:
			FUNC5(bif);
			break;
		case -1:
			FUNC4(bif);
			return (-1);
		default:
			break;
	}

	/*
	 * The number of ports is accessible via SNMP -
	 * update the ports each time the bridge interface data
	 * is refreshed too.
	 */
	bif->num_ports = FUNC6(bif);
	bif->entry_age = FUNC10(NULL);

	return (1);
}