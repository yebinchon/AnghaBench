
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* clear_vfta ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mac; } ;


 int stub1 (struct e1000_hw*) ;

void e1000_clear_vfta(struct e1000_hw *hw)
{
 if (hw->mac.ops.clear_vfta)
  hw->mac.ops.clear_vfta(hw);
}
