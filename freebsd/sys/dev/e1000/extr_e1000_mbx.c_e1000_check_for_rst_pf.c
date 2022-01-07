
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int rsts; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct e1000_hw {TYPE_2__ mbx; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_ERR_MBX ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_VFLRE ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;

__attribute__((used)) static s32 e1000_check_for_rst_pf(struct e1000_hw *hw, u16 vf_number)
{
 u32 vflre = E1000_READ_REG(hw, E1000_VFLRE);
 s32 ret_val = -E1000_ERR_MBX;

 DEBUGFUNC("e1000_check_for_rst_pf");

 if (vflre & (1 << vf_number)) {
  ret_val = E1000_SUCCESS;
  E1000_WRITE_REG(hw, E1000_VFLRE, (1 << vf_number));
  hw->mbx.stats.rsts++;
 }

 return ret_val;
}
