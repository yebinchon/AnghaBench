
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_dev_spec_82543 {int tbi_compatibility; } ;
struct TYPE_3__ {struct e1000_dev_spec_82543 _82543; } ;
struct e1000_hw {TYPE_2__ mac; TYPE_1__ dev_spec; } ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int FALSE ;
 int TBI_COMPAT_ENABLED ;
 scalar_t__ e1000_82543 ;

__attribute__((used)) static bool e1000_tbi_compatibility_enabled_82543(struct e1000_hw *hw)
{
 struct e1000_dev_spec_82543 *dev_spec = &hw->dev_spec._82543;
 bool state = FALSE;

 DEBUGFUNC("e1000_tbi_compatibility_enabled_82543");

 if (hw->mac.type != e1000_82543) {
  DEBUGOUT("TBI compatibility workaround for 82543 only.\n");
  goto out;
 }

 state = !!(dev_spec->tbi_compatibility & TBI_COMPAT_ENABLED);

out:
 return state;
}
