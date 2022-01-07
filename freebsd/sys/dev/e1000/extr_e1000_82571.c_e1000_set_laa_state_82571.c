
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int (* rar_set ) (struct e1000_hw*,int ,scalar_t__) ;} ;
struct TYPE_8__ {scalar_t__ type; scalar_t__ rar_entry_count; int addr; TYPE_3__ ops; } ;
struct TYPE_5__ {int laa_is_present; } ;
struct TYPE_6__ {TYPE_1__ _82571; } ;
struct e1000_hw {TYPE_4__ mac; TYPE_2__ dev_spec; } ;


 int DEBUGFUNC (char*) ;
 scalar_t__ e1000_82571 ;
 int stub1 (struct e1000_hw*,int ,scalar_t__) ;

void e1000_set_laa_state_82571(struct e1000_hw *hw, bool state)
{
 DEBUGFUNC("e1000_set_laa_state_82571");

 if (hw->mac.type != e1000_82571)
  return;

 hw->dev_spec._82571.laa_is_present = state;


 if (state)






  hw->mac.ops.rar_set(hw, hw->mac.addr,
        hw->mac.rar_entry_count - 1);
 return;
}
