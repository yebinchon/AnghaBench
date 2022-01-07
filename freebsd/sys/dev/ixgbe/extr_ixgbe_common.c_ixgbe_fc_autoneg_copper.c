
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {int (* read_reg ) (struct ixgbe_hw*,int ,int ,scalar_t__*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef int s32 ;


 int IXGBE_MDIO_AUTO_NEG_ADVT ;
 int IXGBE_MDIO_AUTO_NEG_DEV_TYPE ;
 int IXGBE_MDIO_AUTO_NEG_LP ;
 int IXGBE_TAF_ASM_PAUSE ;
 int IXGBE_TAF_SYM_PAUSE ;
 int ixgbe_negotiate_fc (struct ixgbe_hw*,int ,int ,int ,int ,int ,int ) ;
 int stub1 (struct ixgbe_hw*,int ,int ,scalar_t__*) ;
 int stub2 (struct ixgbe_hw*,int ,int ,scalar_t__*) ;

__attribute__((used)) static s32 ixgbe_fc_autoneg_copper(struct ixgbe_hw *hw)
{
 u16 technology_ability_reg = 0;
 u16 lp_technology_ability_reg = 0;

 hw->phy.ops.read_reg(hw, IXGBE_MDIO_AUTO_NEG_ADVT,
        IXGBE_MDIO_AUTO_NEG_DEV_TYPE,
        &technology_ability_reg);
 hw->phy.ops.read_reg(hw, IXGBE_MDIO_AUTO_NEG_LP,
        IXGBE_MDIO_AUTO_NEG_DEV_TYPE,
        &lp_technology_ability_reg);

 return ixgbe_negotiate_fc(hw, (u32)technology_ability_reg,
      (u32)lp_technology_ability_reg,
      IXGBE_TAF_SYM_PAUSE, IXGBE_TAF_ASM_PAUSE,
      IXGBE_TAF_SYM_PAUSE, IXGBE_TAF_ASM_PAUSE);
}
