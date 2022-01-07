
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SWSM ;
 int E1000_SWSM_SMBI ;
 int E1000_SWSM_SWESMBI ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;

void e1000_put_hw_semaphore(struct e1000_hw *hw)
{
 u32 swsm;

 DEBUGFUNC("e1000_put_hw_semaphore");

 swsm = E1000_READ_REG(hw, E1000_SWSM);

 swsm &= ~(E1000_SWSM_SMBI | E1000_SWSM_SWESMBI);

 E1000_WRITE_REG(hw, E1000_SWSM, swsm);
}
