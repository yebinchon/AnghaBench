
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int phy_semaphore_mask; int type; } ;
struct TYPE_5__ {int lan_id; } ;
struct TYPE_7__ {int (* set_lan_id ) (struct ixgbe_hw*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct ixgbe_hw {int device_id; TYPE_2__ phy; TYPE_1__ bus; TYPE_4__ mac; } ;
typedef int s32 ;
 int IXGBE_GSSR_PHY0_SM ;
 int IXGBE_GSSR_PHY1_SM ;
 int IXGBE_SUCCESS ;
 int ixgbe_check_cs4227 (struct ixgbe_hw*) ;
 int ixgbe_identify_module_generic (struct ixgbe_hw*) ;
 int ixgbe_identify_phy_generic (struct ixgbe_hw*) ;
 int ixgbe_phy_ext_1g_t ;
 int ixgbe_phy_fw ;
 int ixgbe_phy_x550em_kr ;
 int ixgbe_phy_x550em_kx4 ;
 int ixgbe_phy_x550em_xfi ;
 int ixgbe_read_mng_if_sel_x550em (struct ixgbe_hw*) ;
 int ixgbe_setup_mux_ctl (struct ixgbe_hw*) ;
 int stub1 (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_identify_phy_x550em(struct ixgbe_hw *hw)
{
 hw->mac.ops.set_lan_id(hw);

 ixgbe_read_mng_if_sel_x550em(hw);

 switch (hw->device_id) {
 case 135:
  return ixgbe_identify_module_generic(hw);
 case 129:

  ixgbe_setup_mux_ctl(hw);
  ixgbe_check_cs4227(hw);


 case 134:
  return ixgbe_identify_module_generic(hw);
  break;
 case 130:
  hw->phy.type = ixgbe_phy_x550em_kx4;
  break;
 case 128:
  hw->phy.type = ixgbe_phy_x550em_xfi;
  break;
 case 131:
 case 137:
 case 136:
  hw->phy.type = ixgbe_phy_x550em_kr;
  break;
 case 140:
 case 133:
  return ixgbe_identify_phy_generic(hw);
 case 132:
  hw->phy.type = ixgbe_phy_ext_1g_t;
  break;
 case 139:
 case 138:
  hw->phy.type = ixgbe_phy_fw;
  if (hw->bus.lan_id)
   hw->phy.phy_semaphore_mask |= IXGBE_GSSR_PHY1_SM;
  else
   hw->phy.phy_semaphore_mask |= IXGBE_GSSR_PHY0_SM;
  break;
 default:
  break;
 }
 return IXGBE_SUCCESS;
}
