
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_dev_spec_82543 {int init_phy_disabled; } ;
struct TYPE_3__ {struct e1000_dev_spec_82543 _82543; } ;
struct e1000_hw {TYPE_2__ mac; TYPE_1__ dev_spec; } ;


 int DEBUGFUNC (char*) ;
 int FALSE ;
 scalar_t__ e1000_82543 ;

__attribute__((used)) static bool e1000_init_phy_disabled_82543(struct e1000_hw *hw)
{
 struct e1000_dev_spec_82543 *dev_spec = &hw->dev_spec._82543;
 bool ret_val;

 DEBUGFUNC("e1000_init_phy_disabled_82543");

 if (hw->mac.type != e1000_82543) {
  ret_val = FALSE;
  goto out;
 }

 ret_val = dev_spec->init_phy_disabled;

out:
 return ret_val;
}
