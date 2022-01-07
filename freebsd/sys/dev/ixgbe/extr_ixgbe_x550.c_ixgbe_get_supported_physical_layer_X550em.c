
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct TYPE_7__ {scalar_t__ (* get_media_type ) (struct ixgbe_hw*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; int type; } ;
struct TYPE_5__ {int (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;int (* identify ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {int type; int nw_mng_if_sel; int speeds_supported; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_4__ mac; TYPE_2__ phy; int device_id; } ;


 int DEBUGFUNC (char*) ;
 int IXGBE_DEV_ID_X550EM_A_KR_L ;
 int IXGBE_LINK_SPEED_100_FULL ;
 int IXGBE_LINK_SPEED_10_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_MDIO_PHY_1000BASET_ABILITY ;
 int IXGBE_MDIO_PHY_10GBASET_ABILITY ;
 int IXGBE_MDIO_PHY_EXT_ABILITY ;
 int IXGBE_MDIO_PMA_PMD_DEV_TYPE ;
 int IXGBE_NW_MNG_IF_SEL_PHY_SPEED_2_5G ;
 int IXGBE_PHYSICAL_LAYER_1000BASE_KX ;
 int IXGBE_PHYSICAL_LAYER_1000BASE_T ;
 int IXGBE_PHYSICAL_LAYER_100BASE_TX ;
 int IXGBE_PHYSICAL_LAYER_10BASE_T ;
 int IXGBE_PHYSICAL_LAYER_10GBASE_KR ;
 int IXGBE_PHYSICAL_LAYER_10GBASE_KX4 ;
 int IXGBE_PHYSICAL_LAYER_10GBASE_T ;
 int IXGBE_PHYSICAL_LAYER_2500BASE_KX ;
 int IXGBE_PHYSICAL_LAYER_UNKNOWN ;
 int ixgbe_get_supported_phy_sfp_layer_generic (struct ixgbe_hw*) ;
 int ixgbe_mac_X550EM_a ;
 scalar_t__ ixgbe_media_type_fiber ;







 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub3 (struct ixgbe_hw*) ;

u64 ixgbe_get_supported_physical_layer_X550em(struct ixgbe_hw *hw)
{
 u64 physical_layer = IXGBE_PHYSICAL_LAYER_UNKNOWN;
 u16 ext_ability = 0;

 DEBUGFUNC("ixgbe_get_supported_physical_layer_X550em");

 hw->phy.ops.identify(hw);

 switch (hw->phy.type) {
 case 130:
  if (hw->mac.type == ixgbe_mac_X550EM_a) {
   if (hw->phy.nw_mng_if_sel &
       IXGBE_NW_MNG_IF_SEL_PHY_SPEED_2_5G) {
    physical_layer =
     IXGBE_PHYSICAL_LAYER_2500BASE_KX;
    break;
   } else if (hw->device_id ==
       IXGBE_DEV_ID_X550EM_A_KR_L) {
    physical_layer =
     IXGBE_PHYSICAL_LAYER_1000BASE_KX;
    break;
   }
  }

 case 128:
  physical_layer = IXGBE_PHYSICAL_LAYER_10GBASE_KR |
     IXGBE_PHYSICAL_LAYER_1000BASE_KX;
  break;
 case 129:
  physical_layer = IXGBE_PHYSICAL_LAYER_10GBASE_KX4 |
     IXGBE_PHYSICAL_LAYER_1000BASE_KX;
  break;
 case 131:
  hw->phy.ops.read_reg(hw, IXGBE_MDIO_PHY_EXT_ABILITY,
         IXGBE_MDIO_PMA_PMD_DEV_TYPE,
         &ext_ability);
  if (ext_ability & IXGBE_MDIO_PHY_10GBASET_ABILITY)
   physical_layer |= IXGBE_PHYSICAL_LAYER_10GBASE_T;
  if (ext_ability & IXGBE_MDIO_PHY_1000BASET_ABILITY)
   physical_layer |= IXGBE_PHYSICAL_LAYER_1000BASE_T;
  break;
 case 133:
  if (hw->phy.speeds_supported & IXGBE_LINK_SPEED_1GB_FULL)
   physical_layer |= IXGBE_PHYSICAL_LAYER_1000BASE_T;
  if (hw->phy.speeds_supported & IXGBE_LINK_SPEED_100_FULL)
   physical_layer |= IXGBE_PHYSICAL_LAYER_100BASE_TX;
  if (hw->phy.speeds_supported & IXGBE_LINK_SPEED_10_FULL)
   physical_layer |= IXGBE_PHYSICAL_LAYER_10BASE_T;
  break;
 case 132:
  physical_layer = IXGBE_PHYSICAL_LAYER_1000BASE_KX;
  break;
 case 134:
  physical_layer = IXGBE_PHYSICAL_LAYER_1000BASE_T;
  break;
 default:
  break;
 }

 if (hw->mac.ops.get_media_type(hw) == ixgbe_media_type_fiber)
  physical_layer = ixgbe_get_supported_phy_sfp_layer_generic(hw);

 return physical_layer;
}
