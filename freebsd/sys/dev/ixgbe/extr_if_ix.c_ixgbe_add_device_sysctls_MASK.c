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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {scalar_t__ device_id; TYPE_1__ mac; } ;
struct adapter {int feat_cap; struct ixgbe_hw hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int CTLTYPE_STRING ; 
 int CTLTYPE_U16 ; 
 int CTLTYPE_U32 ; 
 scalar_t__ IXGBE_DEV_ID_X550EM_X_10G_T ; 
 int IXGBE_FEATURE_EEE ; 
 char* IXGBE_SYSCTL_DESC_ADV_SPEED ; 
 char* IXGBE_SYSCTL_DESC_SET_FC ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC2 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ ixgbe_mac_X550 ; 
 int /*<<< orphan*/  ixgbe_sysctl_advertise ; 
 int /*<<< orphan*/  ixgbe_sysctl_dmac ; 
 int /*<<< orphan*/  ixgbe_sysctl_eee_state ; 
 int /*<<< orphan*/  ixgbe_sysctl_flowcntl ; 
 int /*<<< orphan*/  ixgbe_sysctl_phy_overtemp_occurred ; 
 int /*<<< orphan*/  ixgbe_sysctl_phy_temp ; 
 int /*<<< orphan*/  ixgbe_sysctl_power_state ; 
 int /*<<< orphan*/  ixgbe_sysctl_print_rss_config ; 
 int /*<<< orphan*/  ixgbe_sysctl_wol_enable ; 
 int /*<<< orphan*/  ixgbe_sysctl_wufc ; 

__attribute__((used)) static void
FUNC7(if_ctx_t ctx)
{
	struct adapter         *adapter = FUNC6(ctx);
	device_t               dev = FUNC5(ctx);
	struct ixgbe_hw        *hw = &adapter->hw;
	struct sysctl_oid_list *child;
	struct sysctl_ctx_list *ctx_list;

	ctx_list = FUNC3(dev);
	child = FUNC2(FUNC4(dev));

	/* Sysctls for all devices */
	FUNC1(ctx_list, child, OID_AUTO, "fc",
	    CTLTYPE_INT | CTLFLAG_RW, adapter, 0, ixgbe_sysctl_flowcntl, "I",
	    IXGBE_SYSCTL_DESC_SET_FC);

	FUNC1(ctx_list, child, OID_AUTO, "advertise_speed",
	    CTLTYPE_INT | CTLFLAG_RW, adapter, 0, ixgbe_sysctl_advertise, "I",
	    IXGBE_SYSCTL_DESC_ADV_SPEED);

#ifdef IXGBE_DEBUG
	/* testing sysctls (for all devices) */
	SYSCTL_ADD_PROC(ctx_list, child, OID_AUTO, "power_state",
	    CTLTYPE_INT | CTLFLAG_RW, adapter, 0, ixgbe_sysctl_power_state,
	    "I", "PCI Power State");

	SYSCTL_ADD_PROC(ctx_list, child, OID_AUTO, "print_rss_config",
	    CTLTYPE_STRING | CTLFLAG_RD, adapter, 0,
	    ixgbe_sysctl_print_rss_config, "A", "Prints RSS Configuration");
#endif
	/* for X550 series devices */
	if (hw->mac.type >= ixgbe_mac_X550)
		FUNC1(ctx_list, child, OID_AUTO, "dmac",
		    CTLTYPE_U16 | CTLFLAG_RW, adapter, 0, ixgbe_sysctl_dmac,
		    "I", "DMA Coalesce");

	/* for WoL-capable devices */
	if (hw->device_id == IXGBE_DEV_ID_X550EM_X_10G_T) {
		FUNC1(ctx_list, child, OID_AUTO, "wol_enable",
		    CTLTYPE_INT | CTLFLAG_RW, adapter, 0,
		    ixgbe_sysctl_wol_enable, "I", "Enable/Disable Wake on LAN");

		FUNC1(ctx_list, child, OID_AUTO, "wufc",
		    CTLTYPE_U32 | CTLFLAG_RW, adapter, 0, ixgbe_sysctl_wufc,
		    "I", "Enable/Disable Wake Up Filters");
	}

	/* for X552/X557-AT devices */
	if (hw->device_id == IXGBE_DEV_ID_X550EM_X_10G_T) {
		struct sysctl_oid *phy_node;
		struct sysctl_oid_list *phy_list;

		phy_node = FUNC0(ctx_list, child, OID_AUTO, "phy",
		    CTLFLAG_RD, NULL, "External PHY sysctls");
		phy_list = FUNC2(phy_node);

		FUNC1(ctx_list, phy_list, OID_AUTO, "temp",
		    CTLTYPE_U16 | CTLFLAG_RD, adapter, 0, ixgbe_sysctl_phy_temp,
		    "I", "Current External PHY Temperature (Celsius)");

		FUNC1(ctx_list, phy_list, OID_AUTO,
		    "overtemp_occurred", CTLTYPE_U16 | CTLFLAG_RD, adapter, 0,
		    ixgbe_sysctl_phy_overtemp_occurred, "I",
		    "External PHY High Temperature Event Occurred");
	}

	if (adapter->feat_cap & IXGBE_FEATURE_EEE) {
		FUNC1(ctx_list, child, OID_AUTO, "eee_state",
		    CTLTYPE_INT | CTLFLAG_RW, adapter, 0,
		    ixgbe_sysctl_eee_state, "I", "EEE Power Save State");
	}
}