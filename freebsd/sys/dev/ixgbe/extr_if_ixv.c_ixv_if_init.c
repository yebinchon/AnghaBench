
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* check_link ) (struct ixgbe_hw*,int *,int *,int ) ;int (* start_hw ) (struct ixgbe_hw*) ;int (* reset_hw ) (struct ixgbe_hw*) ;int (* set_rar ) (struct ixgbe_hw*,int ,int ,int ,int) ;int (* stop_adapter ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; int addr; } ;
struct ixgbe_hw {TYPE_2__ mac; int adapter_stopped; } ;
struct ifnet {int dummy; } ;
struct adapter {int link_up; int link_speed; int vector; int rx_mbuf_sz; struct ixgbe_hw hw; } ;
typedef int if_ctx_t ;
typedef int device_t ;


 int FALSE ;
 int IF_LLADDR (struct ifnet*) ;
 int INIT_DEBUGOUT (char*) ;
 int IXGBE_EICS_RTX_QUEUE ;
 int IXGBE_ETH_LENGTH_OF_ADDRESS ;
 int IXGBE_LINK_ITR ;
 int IXGBE_RAH_AV ;
 int IXGBE_VTEIAM ;
 int IXGBE_VTEITR (int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int bcopy (int ,int ,int ) ;
 int device_printf (int ,char*) ;
 int iflib_get_dev (int ) ;
 struct ifnet* iflib_get_ifp (int ) ;
 int iflib_get_rx_mbuf_sz (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int ixv_configure_ivars (struct adapter*) ;
 int ixv_if_enable_intr (int ) ;
 int ixv_if_multi_set (int ) ;
 int ixv_init_stats (struct adapter*) ;
 int ixv_initialize_receive_units (int ) ;
 int ixv_initialize_transmit_units (int ) ;
 int ixv_negotiate_api (struct adapter*) ;
 int ixv_setup_vlan_support (int ) ;
 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*,int ,int ,int ,int) ;
 int stub3 (struct ixgbe_hw*,int ,int ,int ,int) ;
 int stub4 (struct ixgbe_hw*) ;
 int stub5 (struct ixgbe_hw*) ;
 int stub6 (struct ixgbe_hw*,int *,int *,int ) ;

__attribute__((used)) static void
ixv_if_init(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ifnet *ifp = iflib_get_ifp(ctx);
 device_t dev = iflib_get_dev(ctx);
 struct ixgbe_hw *hw = &adapter->hw;
 int error = 0;

 INIT_DEBUGOUT("ixv_if_init: begin");
 hw->adapter_stopped = FALSE;
 hw->mac.ops.stop_adapter(hw);


 hw->mac.ops.set_rar(hw, 0, hw->mac.addr, 0, IXGBE_RAH_AV);


 bcopy(IF_LLADDR(ifp), hw->mac.addr, IXGBE_ETH_LENGTH_OF_ADDRESS);
 hw->mac.ops.set_rar(hw, 0, hw->mac.addr, 0, 1);


 hw->mac.ops.reset_hw(hw);
 hw->mac.ops.start_hw(hw);
 error = ixv_negotiate_api(adapter);
 if (error) {
  device_printf(dev,
      "Mailbox API negotiation failed in if_init!\n");
  return;
 }

 ixv_initialize_transmit_units(ctx);


 ixv_if_multi_set(ctx);

 adapter->rx_mbuf_sz = iflib_get_rx_mbuf_sz(ctx);


 ixv_initialize_receive_units(ctx);


 ixv_setup_vlan_support(ctx);


 ixv_configure_ivars(adapter);


 IXGBE_WRITE_REG(hw, IXGBE_VTEIAM, IXGBE_EICS_RTX_QUEUE);


 IXGBE_WRITE_REG(hw, IXGBE_VTEITR(adapter->vector), IXGBE_LINK_ITR);


 ixv_init_stats(adapter);


 hw->mac.ops.check_link(hw, &adapter->link_speed, &adapter->link_up,
     FALSE);


 ixv_if_enable_intr(ctx);

 return;
}
