
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {scalar_t__ device_id; TYPE_1__ mac; } ;
struct adapter {int feat_cap; struct ixgbe_hw hw; } ;
typedef int if_ctx_t ;
typedef int device_t ;


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
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct adapter*,int ,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int iflib_get_dev (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 scalar_t__ ixgbe_mac_X550 ;
 int ixgbe_sysctl_advertise ;
 int ixgbe_sysctl_dmac ;
 int ixgbe_sysctl_eee_state ;
 int ixgbe_sysctl_flowcntl ;
 int ixgbe_sysctl_phy_overtemp_occurred ;
 int ixgbe_sysctl_phy_temp ;
 int ixgbe_sysctl_power_state ;
 int ixgbe_sysctl_print_rss_config ;
 int ixgbe_sysctl_wol_enable ;
 int ixgbe_sysctl_wufc ;

__attribute__((used)) static void
ixgbe_add_device_sysctls(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 device_t dev = iflib_get_dev(ctx);
 struct ixgbe_hw *hw = &adapter->hw;
 struct sysctl_oid_list *child;
 struct sysctl_ctx_list *ctx_list;

 ctx_list = device_get_sysctl_ctx(dev);
 child = SYSCTL_CHILDREN(device_get_sysctl_tree(dev));


 SYSCTL_ADD_PROC(ctx_list, child, OID_AUTO, "fc",
     CTLTYPE_INT | CTLFLAG_RW, adapter, 0, ixgbe_sysctl_flowcntl, "I",
     IXGBE_SYSCTL_DESC_SET_FC);

 SYSCTL_ADD_PROC(ctx_list, child, OID_AUTO, "advertise_speed",
     CTLTYPE_INT | CTLFLAG_RW, adapter, 0, ixgbe_sysctl_advertise, "I",
     IXGBE_SYSCTL_DESC_ADV_SPEED);
 if (hw->mac.type >= ixgbe_mac_X550)
  SYSCTL_ADD_PROC(ctx_list, child, OID_AUTO, "dmac",
      CTLTYPE_U16 | CTLFLAG_RW, adapter, 0, ixgbe_sysctl_dmac,
      "I", "DMA Coalesce");


 if (hw->device_id == IXGBE_DEV_ID_X550EM_X_10G_T) {
  SYSCTL_ADD_PROC(ctx_list, child, OID_AUTO, "wol_enable",
      CTLTYPE_INT | CTLFLAG_RW, adapter, 0,
      ixgbe_sysctl_wol_enable, "I", "Enable/Disable Wake on LAN");

  SYSCTL_ADD_PROC(ctx_list, child, OID_AUTO, "wufc",
      CTLTYPE_U32 | CTLFLAG_RW, adapter, 0, ixgbe_sysctl_wufc,
      "I", "Enable/Disable Wake Up Filters");
 }


 if (hw->device_id == IXGBE_DEV_ID_X550EM_X_10G_T) {
  struct sysctl_oid *phy_node;
  struct sysctl_oid_list *phy_list;

  phy_node = SYSCTL_ADD_NODE(ctx_list, child, OID_AUTO, "phy",
      CTLFLAG_RD, ((void*)0), "External PHY sysctls");
  phy_list = SYSCTL_CHILDREN(phy_node);

  SYSCTL_ADD_PROC(ctx_list, phy_list, OID_AUTO, "temp",
      CTLTYPE_U16 | CTLFLAG_RD, adapter, 0, ixgbe_sysctl_phy_temp,
      "I", "Current External PHY Temperature (Celsius)");

  SYSCTL_ADD_PROC(ctx_list, phy_list, OID_AUTO,
      "overtemp_occurred", CTLTYPE_U16 | CTLFLAG_RD, adapter, 0,
      ixgbe_sysctl_phy_overtemp_occurred, "I",
      "External PHY High Temperature Event Occurred");
 }

 if (adapter->feat_cap & IXGBE_FEATURE_EEE) {
  SYSCTL_ADD_PROC(ctx_list, child, OID_AUTO, "eee_state",
      CTLTYPE_INT | CTLFLAG_RW, adapter, 0,
      ixgbe_sysctl_eee_state, "I", "EEE Power Save State");
 }
}
