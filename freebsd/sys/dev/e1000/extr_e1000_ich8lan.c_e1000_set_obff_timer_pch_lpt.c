
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT1 (char*,int) ;
 int E1000_ERR_CONFIG ;
 int E1000_ITR_MASK ;
 int E1000_ITR_MULT ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_SVCR ;
 int E1000_SVCR_OFF_TIMER_MASK ;
 int E1000_SVCR_OFF_TIMER_SHIFT ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;

__attribute__((used)) static s32 e1000_set_obff_timer_pch_lpt(struct e1000_hw *hw, u32 itr)
{
 u32 svcr;
 s32 timer;

 DEBUGFUNC("e1000_set_obff_timer_pch_lpt");


 timer = itr & E1000_ITR_MASK;
 timer = (timer * E1000_ITR_MULT) / 1000;

 if ((timer < 0) || (timer > E1000_ITR_MASK)) {
  DEBUGOUT1("Invalid OBFF timer %d\n", timer);
  return -E1000_ERR_CONFIG;
 }

 svcr = E1000_READ_REG(hw, E1000_SVCR);
 svcr &= ~E1000_SVCR_OFF_TIMER_MASK;
 svcr |= timer << E1000_SVCR_OFF_TIMER_SHIFT;
 E1000_WRITE_REG(hw, E1000_SVCR, svcr);

 return E1000_SUCCESS;
}
