
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_1__ phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int e1000_get_pcs_speed_and_duplex_82575 (struct e1000_hw*,int *,int *) ;
 int e1000_get_speed_and_duplex_copper_generic (struct e1000_hw*,int *,int *) ;
 scalar_t__ e1000_media_type_copper ;

__attribute__((used)) static s32 e1000_get_link_up_info_82575(struct e1000_hw *hw, u16 *speed,
     u16 *duplex)
{
 s32 ret_val;

 DEBUGFUNC("e1000_get_link_up_info_82575");

 if (hw->phy.media_type != e1000_media_type_copper)
  ret_val = e1000_get_pcs_speed_and_duplex_82575(hw, speed,
              duplex);
 else
  ret_val = e1000_get_speed_and_duplex_copper_generic(hw, speed,
            duplex);

 return ret_val;
}
