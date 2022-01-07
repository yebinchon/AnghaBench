
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int (* read_link_unlocked ) (struct ixgbe_hw*,int ,int ,int *) ;} ;
struct TYPE_4__ {int addr; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ link; } ;
typedef int s32 ;


 int stub1 (struct ixgbe_hw*,int ,int ,int *) ;

__attribute__((used)) static s32 ixgbe_read_cs4227(struct ixgbe_hw *hw, u16 reg, u16 *value)
{
 return hw->link.ops.read_link_unlocked(hw, hw->link.addr, reg, value);
}
