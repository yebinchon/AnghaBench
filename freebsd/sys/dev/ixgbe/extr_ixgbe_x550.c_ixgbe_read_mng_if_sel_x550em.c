
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nw_mng_if_sel; int addr; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_2__ phy; TYPE_1__ mac; } ;
typedef int s32 ;


 int IXGBE_NW_MNG_IF_SEL ;
 int IXGBE_NW_MNG_IF_SEL_MDIO_ACT ;
 int IXGBE_NW_MNG_IF_SEL_MDIO_PHY_ADD ;
 int IXGBE_NW_MNG_IF_SEL_MDIO_PHY_ADD_SHIFT ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 scalar_t__ ixgbe_mac_X550EM_a ;

__attribute__((used)) static s32 ixgbe_read_mng_if_sel_x550em(struct ixgbe_hw *hw)
{



 hw->phy.nw_mng_if_sel = IXGBE_READ_REG(hw, IXGBE_NW_MNG_IF_SEL);




 if (hw->mac.type == ixgbe_mac_X550EM_a &&
     hw->phy.nw_mng_if_sel & IXGBE_NW_MNG_IF_SEL_MDIO_ACT) {
  hw->phy.addr = (hw->phy.nw_mng_if_sel &
    IXGBE_NW_MNG_IF_SEL_MDIO_PHY_ADD) >>
          IXGBE_NW_MNG_IF_SEL_MDIO_PHY_ADD_SHIFT;
 }

 return IXGBE_SUCCESS;
}
