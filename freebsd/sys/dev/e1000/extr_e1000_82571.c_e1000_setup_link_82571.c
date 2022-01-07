
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int requested_mode; } ;
struct TYPE_3__ {int type; } ;
struct e1000_hw {TYPE_2__ fc; TYPE_1__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;



 int e1000_fc_default ;
 int e1000_fc_full ;
 int e1000_setup_link_generic (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_setup_link_82571(struct e1000_hw *hw)
{
 DEBUGFUNC("e1000_setup_link_82571");





 switch (hw->mac.type) {
 case 130:
 case 129:
 case 128:
  if (hw->fc.requested_mode == e1000_fc_default)
   hw->fc.requested_mode = e1000_fc_full;
  break;
 default:
  break;
 }

 return e1000_setup_link_generic(hw);
}
