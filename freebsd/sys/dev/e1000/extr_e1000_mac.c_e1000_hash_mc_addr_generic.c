
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int mta_reg_count; int mc_filter_type; } ;
struct e1000_hw {TYPE_1__ mac; } ;


 int DEBUGFUNC (char*) ;

u32 e1000_hash_mc_addr_generic(struct e1000_hw *hw, u8 *mc_addr)
{
 u32 hash_value, hash_mask;
 u8 bit_shift = 0;

 DEBUGFUNC("e1000_hash_mc_addr_generic");


 hash_mask = (hw->mac.mta_reg_count * 32) - 1;




 while (hash_mask >> bit_shift != 0xFF)
  bit_shift++;
 switch (hw->mac.mc_filter_type) {
 default:
 case 0:
  break;
 case 1:
  bit_shift += 1;
  break;
 case 2:
  bit_shift += 2;
  break;
 case 3:
  bit_shift += 4;
  break;
 }

 hash_value = hash_mask & (((mc_addr[4] >> (8 - bit_shift)) |
      (((u16) mc_addr[5]) << bit_shift)));

 return hash_value;
}
