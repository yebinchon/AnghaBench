
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rx_ring {int vtag_strip; int me; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ifnet {int if_capenable; } ;
struct adapter {scalar_t__ num_vlans; int num_rx_queues; int * shadow_vfta; TYPE_1__* rx_queues; struct ixgbe_hw hw; } ;
typedef int if_ctx_t ;
struct TYPE_3__ {struct rx_ring rxr; } ;


 int IFCAP_VLAN_HWFILTER ;
 int IFCAP_VLAN_HWTAGGING ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXDCTL (int ) ;
 int IXGBE_RXDCTL_VME ;
 int IXGBE_VFTA (int) ;
 int IXGBE_VFTA_SIZE ;
 int IXGBE_VLNCTRL ;
 int IXGBE_VLNCTRL_CFIEN ;
 int IXGBE_VLNCTRL_VFE ;
 int IXGBE_VLNCTRL_VME ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int TRUE ;
 struct ifnet* iflib_get_ifp (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 scalar_t__ ixgbe_mac_82598EB ;

__attribute__((used)) static void
ixgbe_setup_vlan_hw_support(if_ctx_t ctx)
{
 struct ifnet *ifp = iflib_get_ifp(ctx);
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ixgbe_hw *hw = &adapter->hw;
 struct rx_ring *rxr;
 int i;
 u32 ctrl;
 if (adapter->num_vlans == 0)
  return;


 if (ifp->if_capenable & IFCAP_VLAN_HWTAGGING) {
  for (i = 0; i < adapter->num_rx_queues; i++) {
   rxr = &adapter->rx_queues[i].rxr;

   if (hw->mac.type != ixgbe_mac_82598EB) {
    ctrl = IXGBE_READ_REG(hw, IXGBE_RXDCTL(rxr->me));
    ctrl |= IXGBE_RXDCTL_VME;
    IXGBE_WRITE_REG(hw, IXGBE_RXDCTL(rxr->me), ctrl);
   }
   rxr->vtag_strip = TRUE;
  }
 }

 if ((ifp->if_capenable & IFCAP_VLAN_HWFILTER) == 0)
  return;




 for (i = 0; i < IXGBE_VFTA_SIZE; i++)
  if (adapter->shadow_vfta[i] != 0)
   IXGBE_WRITE_REG(hw, IXGBE_VFTA(i),
       adapter->shadow_vfta[i]);

 ctrl = IXGBE_READ_REG(hw, IXGBE_VLNCTRL);

 if (ifp->if_capenable & IFCAP_VLAN_HWFILTER) {
  ctrl &= ~IXGBE_VLNCTRL_CFIEN;
  ctrl |= IXGBE_VLNCTRL_VFE;
 }
 if (hw->mac.type == ixgbe_mac_82598EB)
  ctrl |= IXGBE_VLNCTRL_VME;
 IXGBE_WRITE_REG(hw, IXGBE_VLNCTRL, ctrl);
}
