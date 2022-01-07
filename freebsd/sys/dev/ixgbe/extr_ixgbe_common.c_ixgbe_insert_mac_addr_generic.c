
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ rar_highwater; scalar_t__ num_rar_entries; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ IXGBE_ERR_INVALID_MAC_ADDR ;
 int IXGBE_RAH (scalar_t__) ;
 scalar_t__ IXGBE_RAH_AV ;
 int IXGBE_RAL (scalar_t__) ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int ixgbe_clear_vmdq (struct ixgbe_hw*,scalar_t__,int ) ;
 int ixgbe_set_rar (struct ixgbe_hw*,scalar_t__,int*,scalar_t__,scalar_t__) ;
 int ixgbe_set_vmdq (struct ixgbe_hw*,scalar_t__,scalar_t__) ;

s32 ixgbe_insert_mac_addr_generic(struct ixgbe_hw *hw, u8 *addr, u32 vmdq)
{
 static const u32 NO_EMPTY_RAR_FOUND = 0xFFFFFFFF;
 u32 first_empty_rar = NO_EMPTY_RAR_FOUND;
 u32 rar;
 u32 rar_low, rar_high;
 u32 addr_low, addr_high;

 DEBUGFUNC("ixgbe_insert_mac_addr_generic");


 addr_low = addr[0] | (addr[1] << 8)
       | (addr[2] << 16)
       | (addr[3] << 24);
 addr_high = addr[4] | (addr[5] << 8);







 for (rar = 0; rar < hw->mac.rar_highwater; rar++) {
  rar_high = IXGBE_READ_REG(hw, IXGBE_RAH(rar));

  if (((IXGBE_RAH_AV & rar_high) == 0)
      && first_empty_rar == NO_EMPTY_RAR_FOUND) {
   first_empty_rar = rar;
  } else if ((rar_high & 0xFFFF) == addr_high) {
   rar_low = IXGBE_READ_REG(hw, IXGBE_RAL(rar));
   if (rar_low == addr_low)
    break;
  }
 }

 if (rar < hw->mac.rar_highwater) {

  ixgbe_set_vmdq(hw, rar, vmdq);
 } else if (first_empty_rar != NO_EMPTY_RAR_FOUND) {

  rar = first_empty_rar;
  ixgbe_set_rar(hw, rar, addr, vmdq, IXGBE_RAH_AV);
 } else if (rar == hw->mac.rar_highwater) {

  ixgbe_set_rar(hw, rar, addr, vmdq, IXGBE_RAH_AV);
  hw->mac.rar_highwater++;
 } else if (rar >= hw->mac.num_rar_entries) {
  return IXGBE_ERR_INVALID_MAC_ADDR;
 }





 if (rar == 0)
  ixgbe_clear_vmdq(hw, rar, 0);

 return rar;
}
