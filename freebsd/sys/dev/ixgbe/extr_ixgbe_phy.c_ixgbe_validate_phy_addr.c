
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; int addr; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT1 (char*,int) ;
 int FALSE ;
 int IXGBE_MDIO_PHY_ID_HIGH ;
 int IXGBE_MDIO_PMA_PMD_DEV_TYPE ;
 int TRUE ;
 int stub1 (struct ixgbe_hw*,int ,int ,int*) ;

bool ixgbe_validate_phy_addr(struct ixgbe_hw *hw, u32 phy_addr)
{
 u16 phy_id = 0;
 bool valid = FALSE;

 DEBUGFUNC("ixgbe_validate_phy_addr");

 hw->phy.addr = phy_addr;
 hw->phy.ops.read_reg(hw, IXGBE_MDIO_PHY_ID_HIGH,
        IXGBE_MDIO_PMA_PMD_DEV_TYPE, &phy_id);

 if (phy_id != 0xFFFF && phy_id != 0x0)
  valid = TRUE;

 DEBUGOUT1("PHY ID HIGH is 0x%04X\n", phy_id);

 return valid;
}
