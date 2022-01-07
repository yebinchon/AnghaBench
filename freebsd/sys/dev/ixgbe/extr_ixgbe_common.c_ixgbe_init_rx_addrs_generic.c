
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int (* clear_vmdq ) (struct ixgbe_hw*,int ,int ) ;int (* set_rar ) (struct ixgbe_hw*,int ,int *,int ,int ) ;int (* get_mac_addr ) (struct ixgbe_hw*,int *) ;} ;
struct TYPE_6__ {int num_rar_entries; int mcft_size; int mc_filter_type; TYPE_1__ ops; int * addr; } ;
struct TYPE_5__ {int rar_used_count; scalar_t__ mta_in_use; scalar_t__ overflow_promisc; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_2__ addr_ctrl; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,int) ;
 int DEBUGOUT3 (char*,int ,int ,int ) ;
 int IXGBE_CLEAR_VMDQ_ALL ;
 scalar_t__ IXGBE_ERR_INVALID_MAC_ADDR ;
 int IXGBE_MCSTCTRL ;
 int IXGBE_MTA (int) ;
 int IXGBE_RAH (int) ;
 int IXGBE_RAH_AV ;
 int IXGBE_RAL (int) ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int ixgbe_init_uta_tables (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_validate_mac_addr (int *) ;
 int stub1 (struct ixgbe_hw*,int *) ;
 int stub2 (struct ixgbe_hw*,int ,int *,int ,int ) ;
 int stub3 (struct ixgbe_hw*,int ,int ) ;

s32 ixgbe_init_rx_addrs_generic(struct ixgbe_hw *hw)
{
 u32 i;
 u32 rar_entries = hw->mac.num_rar_entries;

 DEBUGFUNC("ixgbe_init_rx_addrs_generic");






 if (ixgbe_validate_mac_addr(hw->mac.addr) ==
     IXGBE_ERR_INVALID_MAC_ADDR) {

  hw->mac.ops.get_mac_addr(hw, hw->mac.addr);

  DEBUGOUT3(" Keeping Current RAR0 Addr =%.2X %.2X %.2X ",
     hw->mac.addr[0], hw->mac.addr[1],
     hw->mac.addr[2]);
  DEBUGOUT3("%.2X %.2X %.2X\n", hw->mac.addr[3],
     hw->mac.addr[4], hw->mac.addr[5]);
 } else {

  DEBUGOUT("Overriding MAC Address in RAR[0]\n");
  DEBUGOUT3(" New MAC Addr =%.2X %.2X %.2X ",
     hw->mac.addr[0], hw->mac.addr[1],
     hw->mac.addr[2]);
  DEBUGOUT3("%.2X %.2X %.2X\n", hw->mac.addr[3],
     hw->mac.addr[4], hw->mac.addr[5]);

  hw->mac.ops.set_rar(hw, 0, hw->mac.addr, 0, IXGBE_RAH_AV);
 }


 hw->mac.ops.clear_vmdq(hw, 0, IXGBE_CLEAR_VMDQ_ALL);

 hw->addr_ctrl.overflow_promisc = 0;

 hw->addr_ctrl.rar_used_count = 1;


 DEBUGOUT1("Clearing RAR[1-%d]\n", rar_entries - 1);
 for (i = 1; i < rar_entries; i++) {
  IXGBE_WRITE_REG(hw, IXGBE_RAL(i), 0);
  IXGBE_WRITE_REG(hw, IXGBE_RAH(i), 0);
 }


 hw->addr_ctrl.mta_in_use = 0;
 IXGBE_WRITE_REG(hw, IXGBE_MCSTCTRL, hw->mac.mc_filter_type);

 DEBUGOUT(" Clearing MTA\n");
 for (i = 0; i < hw->mac.mcft_size; i++)
  IXGBE_WRITE_REG(hw, IXGBE_MTA(i), 0);

 ixgbe_init_uta_tables(hw);

 return IXGBE_SUCCESS;
}
