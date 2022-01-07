
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* validate_mdi_setting ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mac; } ;
typedef int s32 ;


 int E1000_SUCCESS ;
 int stub1 (struct e1000_hw*) ;

s32 e1000_validate_mdi_setting(struct e1000_hw *hw)
{
 if (hw->mac.ops.validate_mdi_setting)
  return hw->mac.ops.validate_mdi_setting(hw);

 return E1000_SUCCESS;
}
