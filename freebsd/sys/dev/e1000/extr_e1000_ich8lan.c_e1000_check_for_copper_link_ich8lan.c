
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_8__ {int (* config_collision_dist ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {int type; TYPE_3__ ops; int autoneg; scalar_t__ get_link_status; } ;
struct TYPE_9__ {int (* acquire ) (struct e1000_hw*) ;int (* read_reg_locked ) (struct e1000_hw*,int ,scalar_t__*) ;int (* write_reg_locked ) (struct e1000_hw*,int ,scalar_t__) ;int (* write_reg ) (struct e1000_hw*,int ,scalar_t__) ;int (* read_reg ) (struct e1000_hw*,int ,scalar_t__*) ;int (* release ) (struct e1000_hw*) ;} ;
struct TYPE_10__ {scalar_t__ type; TYPE_4__ ops; } ;
struct TYPE_6__ {scalar_t__ disable_k1_off; scalar_t__ eee_lp_ability; } ;
struct TYPE_7__ {TYPE_1__ ich8lan; } ;
struct e1000_hw {scalar_t__ device_id; TYPE_5__ phy; struct e1000_mac_info mac; TYPE_2__ dev_spec; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ E1000_DEV_ID_PCH_I218_LM3 ;
 scalar_t__ E1000_DEV_ID_PCH_I218_V3 ;
 scalar_t__ E1000_DEV_ID_PCH_LPTLP_I218_LM ;
 scalar_t__ E1000_DEV_ID_PCH_LPTLP_I218_V ;
 int E1000_ERR_CONFIG ;
 int E1000_FEXTNVM4 ;
 int E1000_FEXTNVM4_BEACON_DURATION_8USEC ;
 int E1000_FEXTNVM4_BEACON_DURATION_MASK ;
 int E1000_FEXTNVM6 ;
 int E1000_FEXTNVM6_K1_OFF_ENABLE ;
 int E1000_PCIEANACFG ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_STATUS ;
 int E1000_STATUS_FD ;
 int E1000_SUCCESS ;
 int E1000_TIPG ;
 int E1000_TIPG_IPGT_MASK ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ FALSE ;
 scalar_t__ FULL_DUPLEX ;
 scalar_t__ HALF_DUPLEX ;
 int HV_KMRN_FIFO_CTRLSTA ;
 scalar_t__ HV_KMRN_FIFO_CTRLSTA_PREAMBLE_MASK ;
 int HV_KMRN_FIFO_CTRLSTA_PREAMBLE_SHIFT ;
 int HV_PM_CTRL ;
 scalar_t__ HV_PM_CTRL_K1_CLK_REQ ;
 scalar_t__ I217_PLL_CLOCK_GATE_MASK ;
 int I217_PLL_CLOCK_GATE_REG ;
 scalar_t__ I217_RX_CONFIG ;
 scalar_t__ I82579_RX_CONFIG ;
 int PHY_REG (int,int) ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 scalar_t__ TRUE ;
 int e1000_check_downshift_generic (struct e1000_hw*) ;
 int e1000_config_fc_after_link_up_generic (struct e1000_hw*) ;
 int e1000_get_speed_and_duplex_copper_generic (struct e1000_hw*,scalar_t__*,scalar_t__*) ;
 int e1000_k1_gig_workaround_hv (struct e1000_hw*,int) ;
 int e1000_k1_workaround_lpt_lp (struct e1000_hw*,int) ;
 int e1000_k1_workaround_lv (struct e1000_hw*) ;
 int e1000_link_stall_workaround_hv (struct e1000_hw*) ;

 int e1000_pch_lpt ;
 int e1000_pch_spt ;

 scalar_t__ e1000_phy_82578 ;
 scalar_t__ e1000_phy_82579 ;
 int e1000_phy_has_link_generic (struct e1000_hw*,int,int ,int*) ;
 int e1000_platform_pm_pch_lpt (struct e1000_hw*,int) ;
 int e1000_set_eee_pchlan (struct e1000_hw*) ;
 int e1000_write_emi_reg_locked (struct e1000_hw*,scalar_t__,scalar_t__) ;
 int stub1 (struct e1000_hw*) ;
 int stub10 (struct e1000_hw*,int ,scalar_t__) ;
 int stub11 (struct e1000_hw*) ;
 int stub12 (struct e1000_hw*) ;
 int stub13 (struct e1000_hw*,int ,int) ;
 int stub14 (struct e1000_hw*) ;
 int stub15 (struct e1000_hw*,int ,scalar_t__*) ;
 int stub16 (struct e1000_hw*,int ,scalar_t__) ;
 int stub17 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*,int ,scalar_t__*) ;
 int stub3 (struct e1000_hw*,int ,scalar_t__) ;
 int stub4 (struct e1000_hw*,int ,scalar_t__*) ;
 int stub5 (struct e1000_hw*,int ,scalar_t__) ;
 int stub6 (struct e1000_hw*) ;
 int stub7 (struct e1000_hw*) ;
 int stub8 (struct e1000_hw*,int ,scalar_t__*) ;
 int stub9 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_check_for_copper_link_ich8lan(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 s32 ret_val, tipg_reg = 0;
 u16 emi_addr, emi_val = 0;
 bool link;
 u16 phy_reg;

 DEBUGFUNC("e1000_check_for_copper_link_ich8lan");






 if (!mac->get_link_status)
  return E1000_SUCCESS;





 ret_val = e1000_phy_has_link_generic(hw, 1, 0, &link);
 if (ret_val)
  return ret_val;

 if (hw->mac.type == 128) {
  ret_val = e1000_k1_gig_workaround_hv(hw, link);
  if (ret_val)
   return ret_val;
 }





 if ((hw->mac.type >= 129) && link) {
  u16 speed, duplex;

  e1000_get_speed_and_duplex_copper_generic(hw, &speed, &duplex);
  tipg_reg = E1000_READ_REG(hw, E1000_TIPG);
  tipg_reg &= ~E1000_TIPG_IPGT_MASK;

  if (duplex == HALF_DUPLEX && speed == SPEED_10) {
   tipg_reg |= 0xFF;

   emi_val = 0;
  } else if (hw->mac.type >= e1000_pch_spt &&
      duplex == FULL_DUPLEX && speed != SPEED_1000) {
   tipg_reg |= 0xC;
   emi_val = 1;
  } else {

   tipg_reg |= 0x08;
   emi_val = 1;
  }

  E1000_WRITE_REG(hw, E1000_TIPG, tipg_reg);

  ret_val = hw->phy.ops.acquire(hw);
  if (ret_val)
   return ret_val;

  if (hw->mac.type == 129)
   emi_addr = I82579_RX_CONFIG;
  else
   emi_addr = I217_RX_CONFIG;
  ret_val = e1000_write_emi_reg_locked(hw, emi_addr, emi_val);


  if (hw->mac.type >= e1000_pch_lpt) {
   u16 phy_reg;

   hw->phy.ops.read_reg_locked(hw, I217_PLL_CLOCK_GATE_REG,
          &phy_reg);
   phy_reg &= ~I217_PLL_CLOCK_GATE_MASK;
   if (speed == SPEED_100 || speed == SPEED_10)
    phy_reg |= 0x3E8;
   else
    phy_reg |= 0xFA;
   hw->phy.ops.write_reg_locked(hw,
           I217_PLL_CLOCK_GATE_REG,
           phy_reg);

   if (speed == SPEED_1000) {
    hw->phy.ops.read_reg_locked(hw, HV_PM_CTRL,
           &phy_reg);

    phy_reg |= HV_PM_CTRL_K1_CLK_REQ;

    hw->phy.ops.write_reg_locked(hw, HV_PM_CTRL,
            phy_reg);
    }
   }
  hw->phy.ops.release(hw);

  if (ret_val)
   return ret_val;

  if (hw->mac.type >= e1000_pch_spt) {
   u16 data;
   u16 ptr_gap;

   if (speed == SPEED_1000) {
    ret_val = hw->phy.ops.acquire(hw);
    if (ret_val)
     return ret_val;

    ret_val = hw->phy.ops.read_reg_locked(hw,
             PHY_REG(776, 20),
             &data);
    if (ret_val) {
     hw->phy.ops.release(hw);
     return ret_val;
    }

    ptr_gap = (data & (0x3FF << 2)) >> 2;
    if (ptr_gap < 0x18) {
     data &= ~(0x3FF << 2);
     data |= (0x18 << 2);
     ret_val =
      hw->phy.ops.write_reg_locked(hw,
       PHY_REG(776, 20), data);
    }
    hw->phy.ops.release(hw);
    if (ret_val)
     return ret_val;
   } else {
    ret_val = hw->phy.ops.acquire(hw);
    if (ret_val)
     return ret_val;

    ret_val = hw->phy.ops.write_reg_locked(hw,
            PHY_REG(776, 20),
            0xC023);
    hw->phy.ops.release(hw);
    if (ret_val)
     return ret_val;

   }
  }
 }






 if (hw->mac.type >= e1000_pch_lpt) {
  u32 mac_reg;

  mac_reg = E1000_READ_REG(hw, E1000_FEXTNVM4);
  mac_reg &= ~E1000_FEXTNVM4_BEACON_DURATION_MASK;
  mac_reg |= E1000_FEXTNVM4_BEACON_DURATION_8USEC;
  E1000_WRITE_REG(hw, E1000_FEXTNVM4, mac_reg);
 }


 if ((hw->device_id == E1000_DEV_ID_PCH_LPTLP_I218_LM) ||
     (hw->device_id == E1000_DEV_ID_PCH_LPTLP_I218_V) ||
     (hw->device_id == E1000_DEV_ID_PCH_I218_LM3) ||
     (hw->device_id == E1000_DEV_ID_PCH_I218_V3)) {
  ret_val = e1000_k1_workaround_lpt_lp(hw, link);
  if (ret_val)
   return ret_val;
 }
 if (hw->mac.type >= e1000_pch_lpt) {




  ret_val = e1000_platform_pm_pch_lpt(hw, link);
  if (ret_val)
   return ret_val;
 }


 hw->dev_spec.ich8lan.eee_lp_ability = 0;

 if (hw->mac.type >= e1000_pch_lpt) {
  u32 fextnvm6 = E1000_READ_REG(hw, E1000_FEXTNVM6);

  if (hw->mac.type == e1000_pch_spt) {

   u32 pcieanacfg = E1000_READ_REG(hw, E1000_PCIEANACFG);

   if (pcieanacfg & E1000_FEXTNVM6_K1_OFF_ENABLE)
    fextnvm6 |= E1000_FEXTNVM6_K1_OFF_ENABLE;
   else
    fextnvm6 &= ~E1000_FEXTNVM6_K1_OFF_ENABLE;
  }

  if (hw->dev_spec.ich8lan.disable_k1_off == TRUE)
   fextnvm6 &= ~E1000_FEXTNVM6_K1_OFF_ENABLE;

  E1000_WRITE_REG(hw, E1000_FEXTNVM6, fextnvm6);
 }

 if (!link)
  return E1000_SUCCESS;

 mac->get_link_status = FALSE;

 switch (hw->mac.type) {
 case 129:
  ret_val = e1000_k1_workaround_lv(hw);
  if (ret_val)
   return ret_val;

 case 128:
  if (hw->phy.type == e1000_phy_82578) {
   ret_val = e1000_link_stall_workaround_hv(hw);
   if (ret_val)
    return ret_val;
  }






  hw->phy.ops.read_reg(hw, HV_KMRN_FIFO_CTRLSTA, &phy_reg);
  phy_reg &= ~HV_KMRN_FIFO_CTRLSTA_PREAMBLE_MASK;

  if ((E1000_READ_REG(hw, E1000_STATUS) & E1000_STATUS_FD) !=
      E1000_STATUS_FD)
   phy_reg |= (1 << HV_KMRN_FIFO_CTRLSTA_PREAMBLE_SHIFT);

  hw->phy.ops.write_reg(hw, HV_KMRN_FIFO_CTRLSTA, phy_reg);
  break;
 default:
  break;
 }




 e1000_check_downshift_generic(hw);


 if (hw->phy.type > e1000_phy_82579) {
  ret_val = e1000_set_eee_pchlan(hw);
  if (ret_val)
   return ret_val;
 }




 if (!mac->autoneg)
  return -E1000_ERR_CONFIG;





 mac->ops.config_collision_dist(hw);






 ret_val = e1000_config_fc_after_link_up_generic(hw);
 if (ret_val)
  DEBUGOUT("Error configuring flow control\n");

 return ret_val;
}
