
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * perm_addr; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int IXGBE_ETH_LENGTH_OF_ADDRESS ;
 int IXGBE_SUCCESS ;

s32 ixgbe_get_mac_addr_vf(struct ixgbe_hw *hw, u8 *mac_addr)
{
 int i;

 for (i = 0; i < IXGBE_ETH_LENGTH_OF_ADDRESS; i++)
  mac_addr[i] = hw->mac.perm_addr[i];

 return IXGBE_SUCCESS;
}
