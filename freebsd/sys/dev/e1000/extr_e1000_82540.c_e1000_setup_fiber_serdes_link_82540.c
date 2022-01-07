
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct e1000_mac_info {int type; } ;
struct TYPE_2__ {int media_type; } ;
struct e1000_hw {TYPE_1__ phy; struct e1000_mac_info mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_SUCCESS ;


 int e1000_adjust_serdes_amplitude_82540 (struct e1000_hw*) ;
 int e1000_media_type_internal_serdes ;
 int e1000_set_vco_speed_82540 (struct e1000_hw*) ;
 int e1000_setup_fiber_serdes_link_generic (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_setup_fiber_serdes_link_82540(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 s32 ret_val = E1000_SUCCESS;

 DEBUGFUNC("e1000_setup_fiber_serdes_link_82540");

 switch (mac->type) {
 case 129:
 case 128:
  if (hw->phy.media_type == e1000_media_type_internal_serdes) {




   ret_val = e1000_adjust_serdes_amplitude_82540(hw);
   if (ret_val)
    goto out;
  }

  ret_val = e1000_set_vco_speed_82540(hw);
  if (ret_val)
   goto out;
 default:
  break;
 }

 ret_val = e1000_setup_fiber_serdes_link_generic(hw);

out:
 return ret_val;
}
