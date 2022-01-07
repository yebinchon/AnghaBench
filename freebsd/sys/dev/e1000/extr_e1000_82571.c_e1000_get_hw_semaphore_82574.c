
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int ASSERT_CTX_LOCK_HELD (struct e1000_hw*) ;
 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ E1000_ERR_PHY ;
 int E1000_EXTCNF_CTRL ;
 int E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ MDIO_OWNERSHIP_TIMEOUT ;
 int e1000_put_hw_semaphore_82574 (struct e1000_hw*) ;
 int msec_delay (int) ;

__attribute__((used)) static s32
e1000_get_hw_semaphore_82574(struct e1000_hw *hw)
{
 u32 extcnf_ctrl;
 s32 i = 0;

 DEBUGFUNC("e1000_get_hw_semaphore_82573");

 ASSERT_CTX_LOCK_HELD(hw);
 extcnf_ctrl = E1000_READ_REG(hw, E1000_EXTCNF_CTRL);
 do {
  extcnf_ctrl |= E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP;
  E1000_WRITE_REG(hw, E1000_EXTCNF_CTRL, extcnf_ctrl);
  extcnf_ctrl = E1000_READ_REG(hw, E1000_EXTCNF_CTRL);

  if (extcnf_ctrl & E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP)
   break;

  msec_delay(2);
  i++;
 } while (i < MDIO_OWNERSHIP_TIMEOUT);

 if (i == MDIO_OWNERSHIP_TIMEOUT) {

  e1000_put_hw_semaphore_82574(hw);
  DEBUGOUT("Driver can't access the PHY\n");
  return -E1000_ERR_PHY;
 }

 return E1000_SUCCESS;
}
