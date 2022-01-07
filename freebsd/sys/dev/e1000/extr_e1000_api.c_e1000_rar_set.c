
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int (* rar_set ) (struct e1000_hw*,int *,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mac; } ;


 int E1000_SUCCESS ;
 int stub1 (struct e1000_hw*,int *,int ) ;

int e1000_rar_set(struct e1000_hw *hw, u8 *addr, u32 index)
{
 if (hw->mac.ops.rar_set)
  return hw->mac.ops.rar_set(hw, addr, index);

 return E1000_SUCCESS;
}
