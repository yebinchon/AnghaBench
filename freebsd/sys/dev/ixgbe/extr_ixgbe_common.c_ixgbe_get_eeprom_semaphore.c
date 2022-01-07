
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int ERROR_REPORT1 (int ,char*) ;
 int IXGBE_ERROR_POLLING ;
 scalar_t__ IXGBE_ERR_EEPROM ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_SUCCESS ;
 int IXGBE_SWSM_BY_MAC (struct ixgbe_hw*) ;
 scalar_t__ IXGBE_SWSM_SMBI ;
 scalar_t__ IXGBE_SWSM_SWESMBI ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 int ixgbe_release_eeprom_semaphore (struct ixgbe_hw*) ;
 int usec_delay (int) ;

__attribute__((used)) static s32 ixgbe_get_eeprom_semaphore(struct ixgbe_hw *hw)
{
 s32 status = IXGBE_ERR_EEPROM;
 u32 timeout = 2000;
 u32 i;
 u32 swsm;

 DEBUGFUNC("ixgbe_get_eeprom_semaphore");



 for (i = 0; i < timeout; i++) {




  swsm = IXGBE_READ_REG(hw, IXGBE_SWSM_BY_MAC(hw));
  if (!(swsm & IXGBE_SWSM_SMBI)) {
   status = IXGBE_SUCCESS;
   break;
  }
  usec_delay(50);
 }

 if (i == timeout) {
  DEBUGOUT("Driver can't access the Eeprom - SMBI Semaphore "
    "not granted.\n");






  ixgbe_release_eeprom_semaphore(hw);

  usec_delay(50);





  swsm = IXGBE_READ_REG(hw, IXGBE_SWSM_BY_MAC(hw));
  if (!(swsm & IXGBE_SWSM_SMBI))
   status = IXGBE_SUCCESS;
 }


 if (status == IXGBE_SUCCESS) {
  for (i = 0; i < timeout; i++) {
   swsm = IXGBE_READ_REG(hw, IXGBE_SWSM_BY_MAC(hw));


   swsm |= IXGBE_SWSM_SWESMBI;
   IXGBE_WRITE_REG(hw, IXGBE_SWSM_BY_MAC(hw), swsm);





   swsm = IXGBE_READ_REG(hw, IXGBE_SWSM_BY_MAC(hw));
   if (swsm & IXGBE_SWSM_SWESMBI)
    break;

   usec_delay(50);
  }





  if (i >= timeout) {
   ERROR_REPORT1(IXGBE_ERROR_POLLING,
       "SWESMBI Software EEPROM semaphore not granted.\n");
   ixgbe_release_eeprom_semaphore(hw);
   status = IXGBE_ERR_EEPROM;
  }
 } else {
  ERROR_REPORT1(IXGBE_ERROR_POLLING,
        "Software semaphore SMBI between device drivers "
        "not granted.\n");
 }

 return status;
}
