
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {scalar_t__ (* set_vfta ) (struct ixgbe_hw*,int,int ,int ,int ) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct ixgbe_hw {TYPE_4__ mac; } ;
struct ifnet {int if_capenable; } ;
struct adapter {scalar_t__ num_vlans; int num_rx_queues; TYPE_2__* rx_queues; struct ixgbe_hw hw; } ;
typedef int if_ctx_t ;
struct TYPE_5__ {int vtag_strip; } ;
struct TYPE_6__ {TYPE_1__ rxr; } ;


 int FALSE ;
 int IFCAP_VLAN_HWFILTER ;
 int IFCAP_VLAN_HWTAGGING ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXDCTL_VME ;
 int IXGBE_VFRXDCTL (int) ;
 int IXGBE_VFTA_SIZE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int TRUE ;
 struct ifnet* iflib_get_ifp (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 scalar_t__* ixv_shadow_vfta ;
 scalar_t__ stub1 (struct ixgbe_hw*,int,int ,int ,int ) ;

__attribute__((used)) static void
ixv_setup_vlan_support(if_ctx_t ctx)
{
 struct ifnet *ifp = iflib_get_ifp(ctx);
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ixgbe_hw *hw = &adapter->hw;
 u32 ctrl, vid, vfta, retry;







 if (adapter->num_vlans == 0)
  return;

 if (ifp->if_capenable & IFCAP_VLAN_HWTAGGING) {

  for (int i = 0; i < adapter->num_rx_queues; i++) {
   ctrl = IXGBE_READ_REG(hw, IXGBE_VFRXDCTL(i));
   ctrl |= IXGBE_RXDCTL_VME;
   IXGBE_WRITE_REG(hw, IXGBE_VFRXDCTL(i), ctrl);




   adapter->rx_queues[i].rxr.vtag_strip = TRUE;
  }
 }





 if ((ifp->if_capenable & IFCAP_VLAN_HWFILTER) == 0)
  return;





 for (int i = 0; i < IXGBE_VFTA_SIZE; i++) {
  if (ixv_shadow_vfta[i] == 0)
   continue;
  vfta = ixv_shadow_vfta[i];





  for (int j = 0; j < 32; j++) {
   retry = 0;
   if ((vfta & (1 << j)) == 0)
    continue;
   vid = (i * 32) + j;

   while (hw->mac.ops.set_vfta(hw, vid, 0, TRUE, FALSE)) {
    if (++retry > 5)
     break;
   }
  }
 }
}
