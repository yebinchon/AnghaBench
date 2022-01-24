#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ifnet {int /*<<< orphan*/  if_drv_flags; int /*<<< orphan*/  if_hwassist; } ;
struct TYPE_9__ {scalar_t__ qla_watchdog_pause; } ;
struct TYPE_10__ {TYPE_1__ flags; struct ifnet* ifp; int /*<<< orphan*/  mac_addr; } ;
typedef  TYPE_2__ qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  CSUM_IP ; 
 int /*<<< orphan*/  CSUM_TCP ; 
 int /*<<< orphan*/  CSUM_TSO ; 
 int /*<<< orphan*/  CSUM_UDP ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC7(qla_host_t *ha)
{
	struct ifnet *ifp = ha->ifp;

	FUNC6(ha);

	FUNC4(ha);

	if (FUNC2(ha) != 0)
		return;

	if (FUNC3(ha))
		return;

	FUNC1(FUNC0(ha->ifp), ha->mac_addr, ETHER_ADDR_LEN);

	ifp->if_hwassist = CSUM_IP;
	ifp->if_hwassist |= CSUM_TCP;
	ifp->if_hwassist |= CSUM_UDP;
	ifp->if_hwassist |= CSUM_TSO;

 	if (FUNC5(ha) == 0) {
		ifp = ha->ifp;
		ifp->if_drv_flags |= IFF_DRV_RUNNING;
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
		ha->flags.qla_watchdog_pause = 0;
	}

	return;
}