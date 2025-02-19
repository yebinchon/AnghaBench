
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;} ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ ops; int id; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;


 int DEBUGOUT1 (char*,int) ;
 int FALSE ;
 int IXGBE_MDIO_PHY_1000BASET_ABILITY ;
 int IXGBE_MDIO_PHY_10GBASET_ABILITY ;
 int IXGBE_MDIO_PHY_EXT_ABILITY ;
 int IXGBE_MDIO_PMA_PMD_DEV_TYPE ;
 int TRUE ;
 scalar_t__ ixgbe_get_phy_id (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_get_phy_type_from_id (int ) ;
 scalar_t__ ixgbe_phy_cu_unknown ;
 scalar_t__ ixgbe_phy_generic ;
 scalar_t__ ixgbe_phy_unknown ;
 int ixgbe_validate_phy_addr (struct ixgbe_hw*,int) ;
 int stub1 (struct ixgbe_hw*,int ,int ,int*) ;

__attribute__((used)) static bool ixgbe_probe_phy(struct ixgbe_hw *hw, u16 phy_addr)
{
 u16 ext_ability = 0;

 if (!ixgbe_validate_phy_addr(hw, phy_addr)) {
  DEBUGOUT1("Unable to validate PHY address 0x%04X\n",
   phy_addr);
  return FALSE;
 }

 if (ixgbe_get_phy_id(hw))
  return FALSE;

 hw->phy.type = ixgbe_get_phy_type_from_id(hw->phy.id);

 if (hw->phy.type == ixgbe_phy_unknown) {
  hw->phy.ops.read_reg(hw, IXGBE_MDIO_PHY_EXT_ABILITY,
         IXGBE_MDIO_PMA_PMD_DEV_TYPE, &ext_ability);
  if (ext_ability &
      (IXGBE_MDIO_PHY_10GBASET_ABILITY |
       IXGBE_MDIO_PHY_1000BASET_ABILITY))
   hw->phy.type = ixgbe_phy_cu_unknown;
  else
   hw->phy.type = ixgbe_phy_generic;
 }

 return TRUE;
}
