
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int ERROR_REPORT1 (int ,char*) ;
 int IXGBE_ERROR_POLLING ;
 int IXGBE_ERR_PHY ;
 scalar_t__ IXGBE_MDIO_COMMAND_TIMEOUT ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_SB_IOSF_CTRL_BUSY ;
 int IXGBE_SB_IOSF_INDIRECT_CTRL ;
 int IXGBE_SUCCESS ;
 int usec_delay (int) ;

__attribute__((used)) static s32 ixgbe_iosf_wait(struct ixgbe_hw *hw, u32 *ctrl)
{
 u32 i, command = 0;





 for (i = 0; i < IXGBE_MDIO_COMMAND_TIMEOUT; i++) {
  command = IXGBE_READ_REG(hw, IXGBE_SB_IOSF_INDIRECT_CTRL);
  if ((command & IXGBE_SB_IOSF_CTRL_BUSY) == 0)
   break;
  usec_delay(10);
 }
 if (ctrl)
  *ctrl = command;
 if (i == IXGBE_MDIO_COMMAND_TIMEOUT) {
  ERROR_REPORT1(IXGBE_ERROR_POLLING, "Wait timed out\n");
  return IXGBE_ERR_PHY;
 }

 return IXGBE_SUCCESS;
}
