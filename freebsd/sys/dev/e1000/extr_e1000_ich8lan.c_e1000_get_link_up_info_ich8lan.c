
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_2__ phy; TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ SPEED_1000 ;
 scalar_t__ e1000_get_speed_and_duplex_copper_generic (struct e1000_hw*,scalar_t__*,scalar_t__*) ;
 scalar_t__ e1000_ich8lan ;
 scalar_t__ e1000_kmrn_lock_loss_workaround_ich8lan (struct e1000_hw*) ;
 scalar_t__ e1000_phy_igp_3 ;

__attribute__((used)) static s32 e1000_get_link_up_info_ich8lan(struct e1000_hw *hw, u16 *speed,
       u16 *duplex)
{
 s32 ret_val;

 DEBUGFUNC("e1000_get_link_up_info_ich8lan");

 ret_val = e1000_get_speed_and_duplex_copper_generic(hw, speed, duplex);
 if (ret_val)
  return ret_val;

 if ((hw->mac.type == e1000_ich8lan) &&
     (hw->phy.type == e1000_phy_igp_3) &&
     (*speed == SPEED_1000)) {
  ret_val = e1000_kmrn_lock_loss_workaround_ich8lan(hw);
 }

 return ret_val;
}
