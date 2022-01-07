
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 int E1000_SW_FW_SYNC ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 scalar_t__ e1000_get_hw_semaphore (struct e1000_hw*) ;
 int e1000_put_hw_semaphore (struct e1000_hw*) ;

void
e1000_release_swfw_sync(struct e1000_hw *hw, u16 mask)
{
 u32 swfw_sync;

 DEBUGFUNC("e1000_release_swfw_sync");

 while (e1000_get_hw_semaphore(hw) != E1000_SUCCESS)
  ;

 swfw_sync = E1000_READ_REG(hw, E1000_SW_FW_SYNC);
 swfw_sync &= ~mask;
 E1000_WRITE_REG(hw, E1000_SW_FW_SYNC, swfw_sync);

 e1000_put_hw_semaphore(hw);
}
