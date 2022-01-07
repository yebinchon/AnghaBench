
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ rar_used_count; int overflow_promisc; } ;
struct TYPE_4__ {int (* set_rar ) (struct ixgbe_hw*,scalar_t__,int *,scalar_t__,int ) ;} ;
struct TYPE_6__ {scalar_t__ num_rar_entries; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ addr_ctrl; TYPE_3__ mac; } ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,scalar_t__) ;
 int DEBUGOUT6 (char*,int ,int ,int ,int ,int ,int ) ;
 int IXGBE_RAH_AV ;
 int stub1 (struct ixgbe_hw*,scalar_t__,int *,scalar_t__,int ) ;

void ixgbe_add_uc_addr(struct ixgbe_hw *hw, u8 *addr, u32 vmdq)
{
 u32 rar_entries = hw->mac.num_rar_entries;
 u32 rar;

 DEBUGFUNC("ixgbe_add_uc_addr");

 DEBUGOUT6(" UC Addr = %.2X %.2X %.2X %.2X %.2X %.2X\n",
    addr[0], addr[1], addr[2], addr[3], addr[4], addr[5]);





 if (hw->addr_ctrl.rar_used_count < rar_entries) {
  rar = hw->addr_ctrl.rar_used_count;
  hw->mac.ops.set_rar(hw, rar, addr, vmdq, IXGBE_RAH_AV);
  DEBUGOUT1("Added a secondary address to RAR[%d]\n", rar);
  hw->addr_ctrl.rar_used_count++;
 } else {
  hw->addr_ctrl.overflow_promisc++;
 }

 DEBUGOUT("ixgbe_add_uc_addr Complete\n");
}
