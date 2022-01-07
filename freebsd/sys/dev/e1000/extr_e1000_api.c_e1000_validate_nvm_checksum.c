
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* validate ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ nvm; } ;
typedef int s32 ;


 int E1000_ERR_CONFIG ;
 int stub1 (struct e1000_hw*) ;

s32 e1000_validate_nvm_checksum(struct e1000_hw *hw)
{
 if (hw->nvm.ops.validate)
  return hw->nvm.ops.validate(hw);

 return -E1000_ERR_CONFIG;
}
