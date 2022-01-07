
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef size_t u32 ;
typedef size_t u16 ;
struct TYPE_2__ {void** perm_addr; void** addr; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int E1000_RAH (int ) ;
 size_t E1000_RAH_MAC_ADDR_LEN ;
 int E1000_RAL (int ) ;
 size_t E1000_RAL_MAC_ADDR_LEN ;
 size_t E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 size_t ETHER_ADDR_LEN ;

s32 e1000_read_mac_addr_generic(struct e1000_hw *hw)
{
 u32 rar_high;
 u32 rar_low;
 u16 i;

 rar_high = E1000_READ_REG(hw, E1000_RAH(0));
 rar_low = E1000_READ_REG(hw, E1000_RAL(0));

 for (i = 0; i < E1000_RAL_MAC_ADDR_LEN; i++)
  hw->mac.perm_addr[i] = (u8)(rar_low >> (i*8));

 for (i = 0; i < E1000_RAH_MAC_ADDR_LEN; i++)
  hw->mac.perm_addr[i+4] = (u8)(rar_high >> (i*8));

 for (i = 0; i < ETHER_ADDR_LEN; i++)
  hw->mac.addr[i] = hw->mac.perm_addr[i];

 return E1000_SUCCESS;
}
