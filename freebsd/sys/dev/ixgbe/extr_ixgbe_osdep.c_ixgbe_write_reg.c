
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ixgbe_hw {scalar_t__ back; } ;
struct TYPE_2__ {int mem_bus_space_handle; int mem_bus_space_tag; } ;
struct adapter {TYPE_1__ osdep; } ;


 int bus_space_write_4 (int ,int ,int ,int ) ;

inline void
ixgbe_write_reg(struct ixgbe_hw *hw, u32 reg, u32 val)
{
 bus_space_write_4(((struct adapter *)hw->back)->osdep.mem_bus_space_tag,
     ((struct adapter *)hw->back)->osdep.mem_bus_space_handle,
     reg, val);
}
