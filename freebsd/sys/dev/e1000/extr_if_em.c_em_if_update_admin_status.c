
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {scalar_t__ type; int serdes_has_link; int addr; int get_link_status; } ;
struct TYPE_6__ {int media_changed; } ;
struct TYPE_7__ {TYPE_2__ _82575; } ;
struct TYPE_5__ {int media_type; scalar_t__ id; } ;
struct e1000_hw {TYPE_4__ mac; TYPE_3__ dev_spec; TYPE_1__ phy; } ;
struct adapter {int link_active; scalar_t__ link_speed; scalar_t__ link_duplex; scalar_t__ intr_type; struct e1000_hw hw; int flags; scalar_t__ smartspeed; } ;
typedef int if_ctx_t ;
typedef int device_t ;


 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_LINK_MODE_GMII ;
 int E1000_CTRL_EXT_LINK_MODE_MASK ;
 int E1000_IMS ;
 int E1000_IMS_LSC ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_STATUS ;
 int E1000_STATUS_LU ;
 int E1000_TARC (int ) ;
 int E1000_THSTAT ;
 int E1000_THSTAT_LINK_THROTTLE ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int EM_MSIX_LINK ;
 scalar_t__ FULL_DUPLEX ;
 scalar_t__ I210_I_PHY_ID ;
 int I210_LINK_DELAY ;
 scalar_t__ IFLIB_INTR_MSIX ;
 int IF_Mbps (scalar_t__) ;
 int IGB_MEDIA_RESET ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 scalar_t__ SPEED_1000 ;
 int TARC_SPEED_MODE_BIT ;
 int TRUE ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 scalar_t__ e1000_82571 ;
 scalar_t__ e1000_82572 ;
 scalar_t__ e1000_82574 ;
 int e1000_cfg_on_link_up (struct e1000_hw*) ;
 int e1000_check_for_link (struct e1000_hw*) ;
 scalar_t__ e1000_get_laa_state_82571 (struct e1000_hw*) ;
 int e1000_get_speed_and_duplex (struct e1000_hw*,scalar_t__*,scalar_t__*) ;
 scalar_t__ e1000_i210 ;
 scalar_t__ e1000_i211 ;
 scalar_t__ e1000_i350 ;




 scalar_t__ e1000_pch_spt ;
 int e1000_rar_set (struct e1000_hw*,int ,int ) ;
 scalar_t__ em_mac_min ;
 int em_reset (int ) ;
 int em_update_stats_counters (struct adapter*) ;
 int iflib_get_dev (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int iflib_link_state_change (int ,int ,int ) ;
 scalar_t__ igb_mac_min ;
 int lem_smartspeed (struct adapter*) ;
 int msec_delay (int) ;

__attribute__((used)) static void
em_if_update_admin_status(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct e1000_hw *hw = &adapter->hw;
 device_t dev = iflib_get_dev(ctx);
 u32 link_check, thstat, ctrl;

 link_check = thstat = ctrl = 0;

 switch (hw->phy.media_type) {
 case 131:
  if (hw->mac.get_link_status) {
   if (hw->mac.type == e1000_pch_spt)
    msec_delay(50);

   e1000_check_for_link(hw);
   link_check = !hw->mac.get_link_status;
   if (link_check)
    e1000_cfg_on_link_up(hw);
  } else {
   link_check = TRUE;
  }
  break;
 case 130:
  e1000_check_for_link(hw);
  link_check = (E1000_READ_REG(hw, E1000_STATUS) &
       E1000_STATUS_LU);
  break;
 case 129:
  e1000_check_for_link(hw);
  link_check = adapter->hw.mac.serdes_has_link;
  break;

 case 128:
  e1000_check_for_link(hw);
  link_check = !hw->mac.get_link_status;

 default:
  break;
 }


 if (hw->mac.type == e1000_i350) {
  thstat = E1000_READ_REG(hw, E1000_THSTAT);
  ctrl = E1000_READ_REG(hw, E1000_CTRL_EXT);
 }


 if (link_check && (adapter->link_active == 0)) {
  e1000_get_speed_and_duplex(hw, &adapter->link_speed,
      &adapter->link_duplex);

  if ((adapter->link_speed != SPEED_1000) &&
      ((hw->mac.type == e1000_82571) ||
      (hw->mac.type == e1000_82572))) {
   int tarc0;
   tarc0 = E1000_READ_REG(hw, E1000_TARC(0));
   tarc0 &= ~TARC_SPEED_MODE_BIT;
   E1000_WRITE_REG(hw, E1000_TARC(0), tarc0);
  }
  if (bootverbose)
   device_printf(dev, "Link is up %d Mbps %s\n",
       adapter->link_speed,
       ((adapter->link_duplex == FULL_DUPLEX) ?
       "Full Duplex" : "Half Duplex"));
  adapter->link_active = 1;
  adapter->smartspeed = 0;
  if ((ctrl & E1000_CTRL_EXT_LINK_MODE_MASK) ==
      E1000_CTRL_EXT_LINK_MODE_GMII &&
      (thstat & E1000_THSTAT_LINK_THROTTLE))
   device_printf(dev, "Link: thermal downshift\n");

  if (((hw->mac.type == e1000_i210) ||
      (hw->mac.type == e1000_i211)) &&
      (hw->phy.id == I210_I_PHY_ID))
   msec_delay(I210_LINK_DELAY);

  if ((hw->dev_spec._82575.media_changed) &&
   (adapter->hw.mac.type >= igb_mac_min)) {
   hw->dev_spec._82575.media_changed = 0;
   adapter->flags |= IGB_MEDIA_RESET;
   em_reset(ctx);
  }
  iflib_link_state_change(ctx, LINK_STATE_UP,
      IF_Mbps(adapter->link_speed));
 } else if (!link_check && (adapter->link_active == 1)) {
  adapter->link_speed = 0;
  adapter->link_duplex = 0;
  adapter->link_active = 0;
  iflib_link_state_change(ctx, LINK_STATE_DOWN, 0);
 }
 em_update_stats_counters(adapter);


 if (hw->mac.type == e1000_82571 && e1000_get_laa_state_82571(hw))
  e1000_rar_set(hw, hw->mac.addr, 0);

 if (hw->mac.type < em_mac_min)
  lem_smartspeed(adapter);
 else if (hw->mac.type == e1000_82574 &&
     adapter->intr_type == IFLIB_INTR_MSIX)
  E1000_WRITE_REG(&adapter->hw, E1000_IMS, EM_MSIX_LINK |
      E1000_IMS_LSC);
}
