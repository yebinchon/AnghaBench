
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* power_up ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;


 int e1000_setup_link (struct e1000_hw*) ;
 int stub1 (struct e1000_hw*) ;

void e1000_power_up_phy(struct e1000_hw *hw)
{
 if (hw->phy.ops.power_up)
  hw->phy.ops.power_up(hw);

 e1000_setup_link(hw);
}
