
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct TYPE_3__ {int (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;


 int DEBUGFUNC (char*) ;
 int IXGBE_MDIO_PHY_1000BASET_ABILITY ;
 int IXGBE_MDIO_PHY_100BASETX_ABILITY ;
 int IXGBE_MDIO_PHY_10GBASET_ABILITY ;
 int IXGBE_MDIO_PHY_EXT_ABILITY ;
 int IXGBE_MDIO_PMA_PMD_DEV_TYPE ;
 int IXGBE_PHYSICAL_LAYER_1000BASE_T ;
 int IXGBE_PHYSICAL_LAYER_100BASE_TX ;
 int IXGBE_PHYSICAL_LAYER_10GBASE_T ;
 int IXGBE_PHYSICAL_LAYER_UNKNOWN ;
 int stub1 (struct ixgbe_hw*,int ,int ,int*) ;

u64 ixgbe_get_supported_physical_layer_X540(struct ixgbe_hw *hw)
{
 u64 physical_layer = IXGBE_PHYSICAL_LAYER_UNKNOWN;
 u16 ext_ability = 0;

 DEBUGFUNC("ixgbe_get_supported_physical_layer_X540");

 hw->phy.ops.read_reg(hw, IXGBE_MDIO_PHY_EXT_ABILITY,
 IXGBE_MDIO_PMA_PMD_DEV_TYPE, &ext_ability);
 if (ext_ability & IXGBE_MDIO_PHY_10GBASET_ABILITY)
  physical_layer |= IXGBE_PHYSICAL_LAYER_10GBASE_T;
 if (ext_ability & IXGBE_MDIO_PHY_1000BASET_ABILITY)
  physical_layer |= IXGBE_PHYSICAL_LAYER_1000BASE_T;
 if (ext_ability & IXGBE_MDIO_PHY_100BASETX_ABILITY)
  physical_layer |= IXGBE_PHYSICAL_LAYER_100BASE_TX;

 return physical_layer;
}
