
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int ERROR_REPORT1 (int ,char*) ;
 int IXGBE_EEC_BY_MAC (struct ixgbe_hw*) ;
 scalar_t__ IXGBE_EEC_FLUDONE ;
 int IXGBE_ERROR_POLLING ;
 int IXGBE_ERR_EEPROM ;
 scalar_t__ IXGBE_FLUDONE_ATTEMPTS ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 int msec_delay (int) ;

__attribute__((used)) static s32 ixgbe_poll_flash_update_done_X540(struct ixgbe_hw *hw)
{
 u32 i;
 u32 reg;
 s32 status = IXGBE_ERR_EEPROM;

 DEBUGFUNC("ixgbe_poll_flash_update_done_X540");

 for (i = 0; i < IXGBE_FLUDONE_ATTEMPTS; i++) {
  reg = IXGBE_READ_REG(hw, IXGBE_EEC_BY_MAC(hw));
  if (reg & IXGBE_EEC_FLUDONE) {
   status = IXGBE_SUCCESS;
   break;
  }
  msec_delay(5);
 }

 if (i == IXGBE_FLUDONE_ATTEMPTS)
  ERROR_REPORT1(IXGBE_ERROR_POLLING,
        "Flash update status polling timed out");

 return status;
}
