
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int reqs; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct e1000_hw {TYPE_2__ mbx; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_ERR_MBX ;
 int E1000_MBVFICR_VFREQ_VF1 ;
 int E1000_SUCCESS ;
 int e1000_check_for_bit_pf (struct e1000_hw*,int) ;

__attribute__((used)) static s32 e1000_check_for_msg_pf(struct e1000_hw *hw, u16 vf_number)
{
 s32 ret_val = -E1000_ERR_MBX;

 DEBUGFUNC("e1000_check_for_msg_pf");

 if (!e1000_check_for_bit_pf(hw, E1000_MBVFICR_VFREQ_VF1 << vf_number)) {
  ret_val = E1000_SUCCESS;
  hw->mbx.stats.reqs++;
 }

 return ret_val;
}
