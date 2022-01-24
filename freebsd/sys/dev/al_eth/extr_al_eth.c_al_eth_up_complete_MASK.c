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
typedef  int /*<<< orphan*/  uint32_t ;
struct al_eth_adapter {scalar_t__ board_type; int /*<<< orphan*/  hal_adapter; int /*<<< orphan*/  stats_mtx; int /*<<< orphan*/  stats_callout; scalar_t__ internal_pcie_base; TYPE_1__* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_mtu; } ;

/* Variables and functions */
 scalar_t__ ALPINE_FPGA_NIC ; 
 scalar_t__ ALPINE_NIC ; 
 int /*<<< orphan*/  AL_EN_FORWARD_INTR ; 
 int AL_REG_OFFSET_FORWARD_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct al_eth_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct al_eth_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct al_eth_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct al_eth_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct al_eth_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct al_eth_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct al_eth_adapter*) ; 
 int /*<<< orphan*/  al_tick_stats ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct al_eth_adapter *adapter)
{

	FUNC2(adapter);
	FUNC1(adapter);
	FUNC0(adapter, adapter->netdev->if_mtu);
	FUNC8(adapter);
	FUNC7(adapter);
	FUNC5(adapter);

	/* enable forwarding interrupts from eth through pci end point */
	if ((adapter->board_type == ALPINE_FPGA_NIC) ||
	    (adapter->board_type == ALPINE_NIC)) {
		FUNC4((uint32_t*)adapter->internal_pcie_base +
		    AL_REG_OFFSET_FORWARD_INTR, AL_EN_FORWARD_INTR);
	}

	FUNC3(adapter);

	FUNC10(&adapter->stats_mtx);
	FUNC9(&adapter->stats_callout, hz, al_tick_stats, (void*)adapter);
	FUNC11(&adapter->stats_mtx);

	FUNC6(&adapter->hal_adapter);
}