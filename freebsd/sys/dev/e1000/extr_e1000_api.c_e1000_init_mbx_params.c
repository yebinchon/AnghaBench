
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* init_params ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mbx; } ;
typedef int s32 ;


 int DEBUGOUT (char*) ;
 int E1000_ERR_CONFIG ;
 int E1000_SUCCESS ;
 int stub1 (struct e1000_hw*) ;

s32 e1000_init_mbx_params(struct e1000_hw *hw)
{
 s32 ret_val = E1000_SUCCESS;

 if (hw->mbx.ops.init_params) {
  ret_val = hw->mbx.ops.init_params(hw);
  if (ret_val) {
   DEBUGOUT("Mailbox Initialization Error\n");
   goto out;
  }
 } else {
  DEBUGOUT("mbx.init_mbx_params was NULL\n");
  ret_val = -E1000_ERR_CONFIG;
 }

out:
 return ret_val;
}
