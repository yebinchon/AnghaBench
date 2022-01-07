
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int ERROR_REPORT1 (int ,char*) ;
 int IXGBE_CS4227_CHECK_DELAY ;
 int IXGBE_CS4227_EEPROM_LOAD_OK ;
 int IXGBE_CS4227_EEPROM_STATUS ;
 int IXGBE_CS4227_EFUSE_STATUS ;
 int IXGBE_CS4227_RESET_DELAY ;
 int IXGBE_CS4227_RESET_HOLD ;
 scalar_t__ IXGBE_CS4227_RETRIES ;
 int IXGBE_ERROR_INVALID_STATE ;
 scalar_t__ IXGBE_ERR_PHY ;
 int IXGBE_PE_BIT1 ;
 int IXGBE_PE_CONFIG ;
 int IXGBE_PE_OUTPUT ;
 scalar_t__ IXGBE_SUCCESS ;
 scalar_t__ ixgbe_read_cs4227 (struct ixgbe_hw*,int ,int*) ;
 scalar_t__ ixgbe_read_pe (struct ixgbe_hw*,int ,int *) ;
 scalar_t__ ixgbe_write_pe (struct ixgbe_hw*,int ,int ) ;
 int msec_delay (int ) ;
 int usec_delay (int ) ;

__attribute__((used)) static s32 ixgbe_reset_cs4227(struct ixgbe_hw *hw)
{
 s32 status;
 u32 retry;
 u16 value;
 u8 reg;


 status = ixgbe_read_pe(hw, IXGBE_PE_OUTPUT, &reg);
 if (status != IXGBE_SUCCESS)
  return status;
 reg |= IXGBE_PE_BIT1;
 status = ixgbe_write_pe(hw, IXGBE_PE_OUTPUT, reg);
 if (status != IXGBE_SUCCESS)
  return status;

 status = ixgbe_read_pe(hw, IXGBE_PE_CONFIG, &reg);
 if (status != IXGBE_SUCCESS)
  return status;
 reg &= ~IXGBE_PE_BIT1;
 status = ixgbe_write_pe(hw, IXGBE_PE_CONFIG, reg);
 if (status != IXGBE_SUCCESS)
  return status;

 status = ixgbe_read_pe(hw, IXGBE_PE_OUTPUT, &reg);
 if (status != IXGBE_SUCCESS)
  return status;
 reg &= ~IXGBE_PE_BIT1;
 status = ixgbe_write_pe(hw, IXGBE_PE_OUTPUT, reg);
 if (status != IXGBE_SUCCESS)
  return status;

 usec_delay(IXGBE_CS4227_RESET_HOLD);

 status = ixgbe_read_pe(hw, IXGBE_PE_OUTPUT, &reg);
 if (status != IXGBE_SUCCESS)
  return status;
 reg |= IXGBE_PE_BIT1;
 status = ixgbe_write_pe(hw, IXGBE_PE_OUTPUT, reg);
 if (status != IXGBE_SUCCESS)
  return status;


 msec_delay(IXGBE_CS4227_RESET_DELAY);
 for (retry = 0; retry < IXGBE_CS4227_RETRIES; retry++) {
  status = ixgbe_read_cs4227(hw, IXGBE_CS4227_EFUSE_STATUS,
        &value);
  if (status == IXGBE_SUCCESS &&
      value == IXGBE_CS4227_EEPROM_LOAD_OK)
   break;
  msec_delay(IXGBE_CS4227_CHECK_DELAY);
 }
 if (retry == IXGBE_CS4227_RETRIES) {
  ERROR_REPORT1(IXGBE_ERROR_INVALID_STATE,
   "CS4227 reset did not complete.");
  return IXGBE_ERR_PHY;
 }

 status = ixgbe_read_cs4227(hw, IXGBE_CS4227_EEPROM_STATUS, &value);
 if (status != IXGBE_SUCCESS ||
     !(value & IXGBE_CS4227_EEPROM_LOAD_OK)) {
  ERROR_REPORT1(IXGBE_ERROR_INVALID_STATE,
   "CS4227 EEPROM did not load successfully.");
  return IXGBE_ERR_PHY;
 }

 return IXGBE_SUCCESS;
}
