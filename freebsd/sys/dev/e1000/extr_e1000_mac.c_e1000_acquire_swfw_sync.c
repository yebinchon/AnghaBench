
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int ASSERT_NO_LOCKS () ;
 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ E1000_ERR_SWFW_SYNC ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 int E1000_SW_FW_SYNC ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ e1000_get_hw_semaphore (struct e1000_hw*) ;
 int e1000_put_hw_semaphore (struct e1000_hw*) ;
 int msec_delay_irq (int) ;

s32
e1000_acquire_swfw_sync(struct e1000_hw *hw, u16 mask)
{
 u32 swfw_sync;
 u32 swmask = mask;
 u32 fwmask = mask << 16;
 s32 ret_val = E1000_SUCCESS;
 s32 i = 0, timeout = 200;

 DEBUGFUNC("e1000_acquire_swfw_sync");
 ASSERT_NO_LOCKS();
 while (i < timeout) {
  if (e1000_get_hw_semaphore(hw)) {
   ret_val = -E1000_ERR_SWFW_SYNC;
   goto out;
  }

  swfw_sync = E1000_READ_REG(hw, E1000_SW_FW_SYNC);
  if (!(swfw_sync & (fwmask | swmask)))
   break;





  e1000_put_hw_semaphore(hw);
  msec_delay_irq(5);
  i++;
 }

 if (i == timeout) {
  DEBUGOUT("Driver can't access resource, SW_FW_SYNC timeout.\n");
  ret_val = -E1000_ERR_SWFW_SYNC;
  goto out;
 }

 swfw_sync |= swmask;
 E1000_WRITE_REG(hw, E1000_SW_FW_SYNC, swfw_sync);

 e1000_put_hw_semaphore(hw);

out:
 return ret_val;
}
