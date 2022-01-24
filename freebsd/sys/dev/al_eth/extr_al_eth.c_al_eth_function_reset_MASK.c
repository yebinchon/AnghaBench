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
struct al_eth_board_params {int dummy; } ;
struct al_eth_adapter {scalar_t__ board_type; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  ec_base; int /*<<< orphan*/  mac_base; int /*<<< orphan*/  internal_pcie_base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ALPINE_INTEGRATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct al_eth_board_params*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct al_eth_board_params*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  al_eth_fpga_read_pci_config ; 
 int /*<<< orphan*/  al_eth_fpga_write_pci_config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  al_eth_read_pci_config ; 
 int /*<<< orphan*/  al_eth_write_pci_config ; 

__attribute__((used)) static int
FUNC5(struct al_eth_adapter *adapter)
{
	struct al_eth_board_params params;
	int rc;

	/* save board params so we restore it after reset */
	FUNC0(adapter->mac_base, &params);
	FUNC3(adapter->ec_base, 0, adapter->mac_addr);
	if (adapter->board_type == ALPINE_INTEGRATED)
		rc = FUNC2(&al_eth_read_pci_config,
		    &al_eth_write_pci_config,
		    adapter->dev, adapter->mac_base);
	else
		rc = FUNC2(&al_eth_fpga_read_pci_config,
		    &al_eth_fpga_write_pci_config,
		    adapter->internal_pcie_base, adapter->mac_base);

	/* restore params */
	FUNC1(adapter->mac_base, &params);
	FUNC4(adapter->ec_base, 0, adapter->mac_addr);

	return (rc);
}