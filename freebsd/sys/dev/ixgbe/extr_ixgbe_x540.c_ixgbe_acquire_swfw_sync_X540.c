
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_EEP_SM ;
 int IXGBE_GSSR_FLASH_SM ;
 int IXGBE_GSSR_I2C_MASK ;
 int IXGBE_GSSR_MAC_CSR_SM ;
 int IXGBE_GSSR_NVM_PHY_MASK ;
 int IXGBE_GSSR_PHY0_SM ;
 int IXGBE_GSSR_PHY1_SM ;
 int IXGBE_GSSR_SW_MNG_SM ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 int IXGBE_SWFW_SYNC_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 scalar_t__ ixgbe_get_swfw_sync_semaphore (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_mac_X550 ;
 int ixgbe_release_swfw_sync_X540 (struct ixgbe_hw*,int) ;
 int ixgbe_release_swfw_sync_semaphore (struct ixgbe_hw*) ;
 int msec_delay (int) ;

s32 ixgbe_acquire_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask)
{
 u32 swmask = mask & IXGBE_GSSR_NVM_PHY_MASK;
 u32 fwmask = swmask << 5;
 u32 swi2c_mask = mask & IXGBE_GSSR_I2C_MASK;
 u32 timeout = 200;
 u32 hwmask = 0;
 u32 swfw_sync;
 u32 i;

 DEBUGFUNC("ixgbe_acquire_swfw_sync_X540");

 if (swmask & IXGBE_GSSR_EEP_SM)
  hwmask |= IXGBE_GSSR_FLASH_SM;


 if (mask & IXGBE_GSSR_SW_MNG_SM)
  swmask |= IXGBE_GSSR_SW_MNG_SM;

 swmask |= swi2c_mask;
 fwmask |= swi2c_mask << 2;
 if (hw->mac.type >= ixgbe_mac_X550)
  timeout = 1000;

 for (i = 0; i < timeout; i++) {



  if (ixgbe_get_swfw_sync_semaphore(hw)) {
   DEBUGOUT("Failed to get NVM access and register semaphore, returning IXGBE_ERR_SWFW_SYNC\n");
   return IXGBE_ERR_SWFW_SYNC;
  }

  swfw_sync = IXGBE_READ_REG(hw, IXGBE_SWFW_SYNC_BY_MAC(hw));
  if (!(swfw_sync & (fwmask | swmask | hwmask))) {
   swfw_sync |= swmask;
   IXGBE_WRITE_REG(hw, IXGBE_SWFW_SYNC_BY_MAC(hw),
     swfw_sync);
   ixgbe_release_swfw_sync_semaphore(hw);
   return IXGBE_SUCCESS;
  }




  ixgbe_release_swfw_sync_semaphore(hw);
  msec_delay(5);
 }






 if (ixgbe_get_swfw_sync_semaphore(hw)) {
  DEBUGOUT("Failed to get NVM sempahore and register semaphore while forcefully ignoring FW sempahore bit(s) and setting SW semaphore bit(s), returning IXGBE_ERR_SWFW_SYNC\n");
  return IXGBE_ERR_SWFW_SYNC;
 }
 swfw_sync = IXGBE_READ_REG(hw, IXGBE_SWFW_SYNC_BY_MAC(hw));
 if (swfw_sync & (fwmask | hwmask)) {
  swfw_sync |= swmask;
  IXGBE_WRITE_REG(hw, IXGBE_SWFW_SYNC_BY_MAC(hw), swfw_sync);
  ixgbe_release_swfw_sync_semaphore(hw);
  msec_delay(5);
  return IXGBE_SUCCESS;
 }





 if (swfw_sync & swmask) {
  u32 rmask = IXGBE_GSSR_EEP_SM | IXGBE_GSSR_PHY0_SM |
       IXGBE_GSSR_PHY1_SM | IXGBE_GSSR_MAC_CSR_SM |
       IXGBE_GSSR_SW_MNG_SM;

  if (swi2c_mask)
   rmask |= IXGBE_GSSR_I2C_MASK;
  ixgbe_release_swfw_sync_X540(hw, rmask);
  ixgbe_release_swfw_sync_semaphore(hw);
  DEBUGOUT("Resource not released by other SW, returning IXGBE_ERR_SWFW_SYNC\n");
  return IXGBE_ERR_SWFW_SYNC;
 }
 ixgbe_release_swfw_sync_semaphore(hw);
 DEBUGOUT("Returning error IXGBE_ERR_SWFW_SYNC\n");

 return IXGBE_ERR_SWFW_SYNC;
}
