
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ixgbe_hw {scalar_t__ back; } ;
struct TYPE_2__ {int mem_bus_space_handle; int mem_bus_space_tag; } ;
struct adapter {TYPE_1__ osdep; } ;


 int bus_space_read_4 (int ,int ,int) ;

inline u32
ixgbe_read_reg_array(struct ixgbe_hw *hw, u32 reg, u32 offset)
{
 return bus_space_read_4(((struct adapter *)hw->back)->osdep.mem_bus_space_tag,
     ((struct adapter *)hw->back)->osdep.mem_bus_space_handle,
     reg + (offset << 2));
}
