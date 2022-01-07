
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct ixgbe_hw {TYPE_1__ phy; } ;
typedef int s32 ;


 int DEBUGOUT (char*) ;
 int ERROR_REPORT1 (int ,char*) ;
 int IXGBE_ERROR_POLLING ;
 int IXGBE_ERR_PHY ;
 scalar_t__ IXGBE_MDIO_COMMAND_TIMEOUT ;
 int IXGBE_MSCA ;
 scalar_t__ IXGBE_MSCA_ADDR_CYCLE ;
 scalar_t__ IXGBE_MSCA_DEV_TYPE_SHIFT ;
 scalar_t__ IXGBE_MSCA_MDI_COMMAND ;
 scalar_t__ IXGBE_MSCA_NP_ADDR_SHIFT ;
 scalar_t__ IXGBE_MSCA_PHY_ADDR_SHIFT ;
 scalar_t__ IXGBE_MSCA_READ ;
 int IXGBE_MSRWD ;
 scalar_t__ IXGBE_MSRWD_READ_DATA_SHIFT ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 int usec_delay (int) ;

s32 ixgbe_read_phy_reg_mdi(struct ixgbe_hw *hw, u32 reg_addr, u32 device_type,
      u16 *phy_data)
{
 u32 i, data, command;


 command = ((reg_addr << IXGBE_MSCA_NP_ADDR_SHIFT) |
     (device_type << IXGBE_MSCA_DEV_TYPE_SHIFT) |
     (hw->phy.addr << IXGBE_MSCA_PHY_ADDR_SHIFT) |
     (IXGBE_MSCA_ADDR_CYCLE | IXGBE_MSCA_MDI_COMMAND));

 IXGBE_WRITE_REG(hw, IXGBE_MSCA, command);






 for (i = 0; i < IXGBE_MDIO_COMMAND_TIMEOUT; i++) {
  usec_delay(10);

  command = IXGBE_READ_REG(hw, IXGBE_MSCA);
  if ((command & IXGBE_MSCA_MDI_COMMAND) == 0)
   break;
 }


 if ((command & IXGBE_MSCA_MDI_COMMAND) != 0) {
  ERROR_REPORT1(IXGBE_ERROR_POLLING, "PHY address command did not complete.\n");
  DEBUGOUT("PHY address command did not complete, returning IXGBE_ERR_PHY\n");
  return IXGBE_ERR_PHY;
 }





 command = ((reg_addr << IXGBE_MSCA_NP_ADDR_SHIFT) |
     (device_type << IXGBE_MSCA_DEV_TYPE_SHIFT) |
     (hw->phy.addr << IXGBE_MSCA_PHY_ADDR_SHIFT) |
     (IXGBE_MSCA_READ | IXGBE_MSCA_MDI_COMMAND));

 IXGBE_WRITE_REG(hw, IXGBE_MSCA, command);






 for (i = 0; i < IXGBE_MDIO_COMMAND_TIMEOUT; i++) {
  usec_delay(10);

  command = IXGBE_READ_REG(hw, IXGBE_MSCA);
  if ((command & IXGBE_MSCA_MDI_COMMAND) == 0)
   break;
 }

 if ((command & IXGBE_MSCA_MDI_COMMAND) != 0) {
  ERROR_REPORT1(IXGBE_ERROR_POLLING, "PHY read command didn't complete\n");
  DEBUGOUT("PHY read command didn't complete, returning IXGBE_ERR_PHY\n");
  return IXGBE_ERR_PHY;
 }





 data = IXGBE_READ_REG(hw, IXGBE_MSRWD);
 data >>= IXGBE_MSRWD_READ_DATA_SHIFT;
 *phy_data = (u16)(data);

 return IXGBE_SUCCESS;
}
