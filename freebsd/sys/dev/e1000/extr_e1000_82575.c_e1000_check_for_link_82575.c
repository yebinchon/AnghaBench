
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int get_link_status; int serdes_has_link; } ;
struct TYPE_3__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_2__ mac; TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ e1000_check_for_copper_link_generic (struct e1000_hw*) ;
 scalar_t__ e1000_config_fc_after_link_up_generic (struct e1000_hw*) ;
 scalar_t__ e1000_get_pcs_speed_and_duplex_82575 (struct e1000_hw*,int *,int *) ;
 scalar_t__ e1000_media_type_copper ;

__attribute__((used)) static s32 e1000_check_for_link_82575(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 speed, duplex;

 DEBUGFUNC("e1000_check_for_link_82575");

 if (hw->phy.media_type != e1000_media_type_copper) {
  ret_val = e1000_get_pcs_speed_and_duplex_82575(hw, &speed,
              &duplex);





  hw->mac.get_link_status = !hw->mac.serdes_has_link;







  ret_val = e1000_config_fc_after_link_up_generic(hw);
  if (ret_val)
   DEBUGOUT("Error configuring flow control\n");
 } else {
  ret_val = e1000_check_for_copper_link_generic(hw);
 }

 return ret_val;
}
