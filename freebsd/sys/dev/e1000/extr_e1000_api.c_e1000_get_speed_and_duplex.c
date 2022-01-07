
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int (* get_link_up_info ) (struct e1000_hw*,int *,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mac; } ;
typedef int s32 ;


 int E1000_ERR_CONFIG ;
 int stub1 (struct e1000_hw*,int *,int *) ;

s32 e1000_get_speed_and_duplex(struct e1000_hw *hw, u16 *speed, u16 *duplex)
{
 if (hw->mac.ops.get_link_up_info)
  return hw->mac.ops.get_link_up_info(hw, speed, duplex);

 return -E1000_ERR_CONFIG;
}
