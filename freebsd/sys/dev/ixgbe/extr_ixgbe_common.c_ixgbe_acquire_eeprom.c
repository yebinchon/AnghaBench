
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int ) ;int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int IXGBE_EEC_BY_MAC (struct ixgbe_hw*) ;
 scalar_t__ IXGBE_EEC_CS ;
 scalar_t__ IXGBE_EEC_GNT ;
 scalar_t__ IXGBE_EEC_REQ ;
 scalar_t__ IXGBE_EEC_SK ;
 scalar_t__ IXGBE_EEPROM_GRANT_ATTEMPTS ;
 scalar_t__ IXGBE_ERR_EEPROM ;
 scalar_t__ IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_EEP_SM ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_SUCCESS ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ) ;
 int stub2 (struct ixgbe_hw*,int ) ;
 int usec_delay (int) ;

__attribute__((used)) static s32 ixgbe_acquire_eeprom(struct ixgbe_hw *hw)
{
 s32 status = IXGBE_SUCCESS;
 u32 eec;
 u32 i;

 DEBUGFUNC("ixgbe_acquire_eeprom");

 if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM)
     != IXGBE_SUCCESS)
  status = IXGBE_ERR_SWFW_SYNC;

 if (status == IXGBE_SUCCESS) {
  eec = IXGBE_READ_REG(hw, IXGBE_EEC_BY_MAC(hw));


  eec |= IXGBE_EEC_REQ;
  IXGBE_WRITE_REG(hw, IXGBE_EEC_BY_MAC(hw), eec);

  for (i = 0; i < IXGBE_EEPROM_GRANT_ATTEMPTS; i++) {
   eec = IXGBE_READ_REG(hw, IXGBE_EEC_BY_MAC(hw));
   if (eec & IXGBE_EEC_GNT)
    break;
   usec_delay(5);
  }


  if (!(eec & IXGBE_EEC_GNT)) {
   eec &= ~IXGBE_EEC_REQ;
   IXGBE_WRITE_REG(hw, IXGBE_EEC_BY_MAC(hw), eec);
   DEBUGOUT("Could not acquire EEPROM grant\n");

   hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_EEP_SM);
   status = IXGBE_ERR_EEPROM;
  }


  if (status == IXGBE_SUCCESS) {

   eec &= ~(IXGBE_EEC_CS | IXGBE_EEC_SK);
   IXGBE_WRITE_REG(hw, IXGBE_EEC_BY_MAC(hw), eec);
   IXGBE_WRITE_FLUSH(hw);
   usec_delay(1);
  }
 }
 return status;
}
