
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int (* write_reg ) (struct e1000_hw*,int ,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef int s32 ;


 int E1000_SUCCESS ;
 int stub1 (struct e1000_hw*,int ,int ) ;

s32 e1000_write_phy_reg(struct e1000_hw *hw, u32 offset, u16 data)
{
 if (hw->phy.ops.write_reg)
  return hw->phy.ops.write_reg(hw, offset, data);

 return E1000_SUCCESS;
}
