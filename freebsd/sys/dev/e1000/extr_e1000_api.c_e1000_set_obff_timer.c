
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* set_obff_timer ) (struct e1000_hw*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mac; } ;
typedef int s32 ;


 int E1000_SUCCESS ;
 int stub1 (struct e1000_hw*,int ) ;

s32 e1000_set_obff_timer(struct e1000_hw *hw, u32 itr)
{
 if (hw->mac.ops.set_obff_timer)
  return hw->mac.ops.set_obff_timer(hw, itr);

 return E1000_SUCCESS;
}
