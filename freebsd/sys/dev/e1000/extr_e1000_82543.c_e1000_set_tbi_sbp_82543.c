
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct e1000_dev_spec_82543 {int tbi_compatibility; } ;
struct TYPE_2__ {struct e1000_dev_spec_82543 _82543; } ;
struct e1000_hw {TYPE_1__ dev_spec; } ;


 int DEBUGFUNC (char*) ;
 int TBI_SBP_ENABLED ;
 scalar_t__ e1000_tbi_compatibility_enabled_82543 (struct e1000_hw*) ;

__attribute__((used)) static void e1000_set_tbi_sbp_82543(struct e1000_hw *hw, bool state)
{
 struct e1000_dev_spec_82543 *dev_spec = &hw->dev_spec._82543;

 DEBUGFUNC("e1000_set_tbi_sbp_82543");

 if (state && e1000_tbi_compatibility_enabled_82543(hw))
  dev_spec->tbi_compatibility |= TBI_SBP_ENABLED;
 else
  dev_spec->tbi_compatibility &= ~TBI_SBP_ENABLED;

 return;
}
