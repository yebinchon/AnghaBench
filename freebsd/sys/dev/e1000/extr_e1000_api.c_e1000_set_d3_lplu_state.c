
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* set_d3_lplu_state ) (struct e1000_hw*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef int s32 ;


 int E1000_SUCCESS ;
 int stub1 (struct e1000_hw*,int) ;

s32 e1000_set_d3_lplu_state(struct e1000_hw *hw, bool active)
{
 if (hw->phy.ops.set_d3_lplu_state)
  return hw->phy.ops.set_d3_lplu_state(hw, active);

 return E1000_SUCCESS;
}
