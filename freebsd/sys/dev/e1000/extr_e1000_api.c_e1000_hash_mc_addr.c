
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int e1000_hash_mc_addr_generic (struct e1000_hw*,int *) ;

u32 e1000_hash_mc_addr(struct e1000_hw *hw, u8 *mc_addr)
{
 return e1000_hash_mc_addr_generic(hw, mc_addr);
}
