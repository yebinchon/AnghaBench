
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_ERR_PHY ;
 int E1000_MPHY_ADDRESS_FNC_OVERRIDE ;
 int E1000_MPHY_ADDRESS_MASK ;
 int E1000_MPHY_ADDR_CTRL ;
 int E1000_MPHY_DATA ;
 int E1000_MPHY_DIS_ACCESS ;
 int E1000_MPHY_ENA_ACCESS ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int FALSE ;
 int TRUE ;
 int e1000_is_mphy_ready (struct e1000_hw*) ;

s32 e1000_write_phy_reg_mphy(struct e1000_hw *hw, u32 address, u32 data,
        bool line_override)
{
 u32 mphy_ctrl = 0;
 bool locked = FALSE;
 bool ready;

 DEBUGFUNC("e1000_write_phy_reg_mphy");


 ready = e1000_is_mphy_ready(hw);
 if (!ready)
  return -E1000_ERR_PHY;


 mphy_ctrl = E1000_READ_REG(hw, E1000_MPHY_ADDR_CTRL);
 if (mphy_ctrl & E1000_MPHY_DIS_ACCESS) {
  locked = TRUE;
  ready = e1000_is_mphy_ready(hw);
  if (!ready)
   return -E1000_ERR_PHY;
  mphy_ctrl |= E1000_MPHY_ENA_ACCESS;
  E1000_WRITE_REG(hw, E1000_MPHY_ADDR_CTRL, mphy_ctrl);
 }


 ready = e1000_is_mphy_ready(hw);
 if (!ready)
  return -E1000_ERR_PHY;


 if (line_override)
  mphy_ctrl |= E1000_MPHY_ADDRESS_FNC_OVERRIDE;
 else
  mphy_ctrl &= ~E1000_MPHY_ADDRESS_FNC_OVERRIDE;
 mphy_ctrl = (mphy_ctrl & ~E1000_MPHY_ADDRESS_MASK) |
  (address & E1000_MPHY_ADDRESS_MASK);
 E1000_WRITE_REG(hw, E1000_MPHY_ADDR_CTRL, mphy_ctrl);


 ready = e1000_is_mphy_ready(hw);
 if (!ready)
  return -E1000_ERR_PHY;
 E1000_WRITE_REG(hw, E1000_MPHY_DATA, data);


 if (locked)
  ready = e1000_is_mphy_ready(hw);
 if (!ready)
  return -E1000_ERR_PHY;
 E1000_WRITE_REG(hw, E1000_MPHY_ADDR_CTRL,
   E1000_MPHY_DIS_ACCESS);

 return E1000_SUCCESS;
}
