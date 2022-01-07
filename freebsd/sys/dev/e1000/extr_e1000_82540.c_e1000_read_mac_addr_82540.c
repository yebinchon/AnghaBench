
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u8 ;
typedef int u16 ;
struct TYPE_8__ {int* perm_addr; int* addr; } ;
struct TYPE_7__ {scalar_t__ func; } ;
struct TYPE_5__ {scalar_t__ (* read ) (struct e1000_hw*,int,int,int*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_4__ mac; TYPE_3__ bus; TYPE_2__ nvm; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ E1000_FUNC_1 ;
 scalar_t__ E1000_SUCCESS ;
 int ETHER_ADDR_LEN ;
 scalar_t__ stub1 (struct e1000_hw*,int,int,int*) ;

s32 e1000_read_mac_addr_82540(struct e1000_hw *hw)
{
 s32 ret_val = E1000_SUCCESS;
 u16 offset, nvm_data, i;

 DEBUGFUNC("e1000_read_mac_addr");

 for (i = 0; i < ETHER_ADDR_LEN; i += 2) {
  offset = i >> 1;
  ret_val = hw->nvm.ops.read(hw, offset, 1, &nvm_data);
  if (ret_val) {
   DEBUGOUT("NVM Read Error\n");
   goto out;
  }
  hw->mac.perm_addr[i] = (u8)(nvm_data & 0xFF);
  hw->mac.perm_addr[i+1] = (u8)(nvm_data >> 8);
 }


 if (hw->bus.func == E1000_FUNC_1)
  hw->mac.perm_addr[5] ^= 1;

 for (i = 0; i < ETHER_ADDR_LEN; i++)
  hw->mac.addr[i] = hw->mac.perm_addr[i];

out:
 return ret_val;
}
