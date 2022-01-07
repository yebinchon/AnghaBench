
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_SCTL ;
 int E1000_SCTL_DISABLE_SERDES_LOOPBACK ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;


 int e1000_setup_fiber_serdes_link_generic (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_setup_fiber_serdes_link_82571(struct e1000_hw *hw)
{
 DEBUGFUNC("e1000_setup_fiber_serdes_link_82571");

 switch (hw->mac.type) {
 case 129:
 case 128:






  E1000_WRITE_REG(hw, E1000_SCTL,
    E1000_SCTL_DISABLE_SERDES_LOOPBACK);
  break;
 default:
  break;
 }

 return e1000_setup_fiber_serdes_link_generic(hw);
}
