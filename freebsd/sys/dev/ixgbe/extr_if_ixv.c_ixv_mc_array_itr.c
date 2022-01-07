
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_ETH_LENGTH_OF_ADDRESS ;

__attribute__((used)) static u8 *
ixv_mc_array_itr(struct ixgbe_hw *hw, u8 **update_ptr, u32 *vmdq)
{
 u8 *addr = *update_ptr;
 u8 *newptr;

 *vmdq = 0;

 newptr = addr + IXGBE_ETH_LENGTH_OF_ADDRESS;
 *update_ptr = newptr;

 return addr;
}
