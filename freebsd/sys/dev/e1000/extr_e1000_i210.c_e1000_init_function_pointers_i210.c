
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int init_params; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ nvm; } ;


 int e1000_init_function_pointers_82575 (struct e1000_hw*) ;
 int e1000_init_nvm_params_i210 ;

void e1000_init_function_pointers_i210(struct e1000_hw *hw)
{
 e1000_init_function_pointers_82575(hw);
 hw->nvm.ops.init_params = e1000_init_nvm_params_i210;

 return;
}
