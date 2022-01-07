
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u32 ;
struct tx_ring {scalar_t__ tx_cidx_processed; int tx_rs_pidx; int tx_rs_cidx; } ;
struct ifnet {int dummy; } ;
struct em_tx_queue {struct tx_ring txr; } ;
struct TYPE_13__ {scalar_t__ type; int addr; } ;
struct TYPE_12__ {scalar_t__ media_type; } ;
struct TYPE_15__ {TYPE_2__ mac; TYPE_1__ phy; } ;
struct adapter {int tx_num_queues; int ivars; scalar_t__ intr_type; TYPE_4__ hw; scalar_t__ has_amt; scalar_t__ has_manage; int rx_mbuf_sz; struct em_tx_queue* tx_queues; TYPE_3__* shared; } ;
typedef TYPE_3__* if_softc_ctx_t ;
typedef int if_ctx_t ;
struct TYPE_14__ {scalar_t__* isc_ntxd; } ;


 int E1000_CTRL ;
 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_PBA_CLR ;
 int E1000_CTRL_VME ;
 int E1000_ICR ;
 int E1000_ICS ;
 int E1000_ICS_LSC ;
 int E1000_IVAR ;
 scalar_t__ E1000_RAR_ENTRIES ;
 int E1000_READ_REG (TYPE_4__*,int ) ;
 int E1000_VET ;
 int E1000_WRITE_REG (TYPE_4__*,int ,int) ;
 int ETHERTYPE_VLAN ;
 int ETHER_ADDR_LEN ;
 int IFCAP_VLAN_HWFILTER ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFF_PROMISC ;
 scalar_t__ IFLIB_INTR_MSIX ;
 int INIT_DEBUGOUT (char*) ;
 int TRUE ;
 int bcopy (int ,int ,int ) ;
 scalar_t__ e1000_82571 ;
 scalar_t__ e1000_82574 ;
 int e1000_clear_hw_cntrs_base_generic (TYPE_4__*) ;
 scalar_t__ e1000_i354 ;
 scalar_t__ e1000_media_type_copper ;
 int e1000_rar_set (TYPE_4__*,int ,scalar_t__) ;
 int e1000_rx_fifo_flush_82575 (TYPE_4__*) ;
 int e1000_set_eee_i350 (TYPE_4__*,int ,int ) ;
 int e1000_set_eee_i354 (TYPE_4__*,int ,int ) ;
 int e1000_set_laa_state_82571 (TYPE_4__*,int ) ;
 int em_get_hw_control (struct adapter*) ;
 int em_if_multi_set (int ) ;
 int em_if_set_promisc (int ,int ) ;
 int em_if_update_admin_status (int ) ;
 int em_init_manageability (struct adapter*) ;
 int em_initialize_receive_unit (int ) ;
 int em_initialize_transmit_unit (int ) ;
 int em_reset (int ) ;
 int em_setup_vlan_hw_support (struct adapter*) ;
 int if_getcapenable (struct ifnet*) ;
 int if_getlladdr (struct ifnet*) ;
 struct ifnet* iflib_get_ifp (int ) ;
 int iflib_get_rx_mbuf_sz (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int igb_configure_queues (struct adapter*) ;
 scalar_t__ igb_mac_min ;

__attribute__((used)) static void
em_if_init(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 if_softc_ctx_t scctx = adapter->shared;
 struct ifnet *ifp = iflib_get_ifp(ctx);
 struct em_tx_queue *tx_que;
 int i;

 INIT_DEBUGOUT("em_if_init: begin");


 bcopy(if_getlladdr(ifp), adapter->hw.mac.addr,
     ETHER_ADDR_LEN);


 e1000_rar_set(&adapter->hw, adapter->hw.mac.addr, 0);







 if (adapter->hw.mac.type == e1000_82571) {
  e1000_set_laa_state_82571(&adapter->hw, TRUE);
  e1000_rar_set(&adapter->hw, adapter->hw.mac.addr,
      E1000_RAR_ENTRIES - 1);
 }



 em_reset(ctx);
 em_if_update_admin_status(ctx);

 for (i = 0, tx_que = adapter->tx_queues; i < adapter->tx_num_queues; i++, tx_que++) {
  struct tx_ring *txr = &tx_que->txr;

  txr->tx_rs_cidx = txr->tx_rs_pidx;






  txr->tx_cidx_processed = scctx->isc_ntxd[0] - 1;
 }


 E1000_WRITE_REG(&adapter->hw, E1000_VET, ETHERTYPE_VLAN);


 if (adapter->hw.mac.type >= igb_mac_min)
  e1000_rx_fifo_flush_82575(&adapter->hw);


 em_init_manageability(adapter);


 em_initialize_transmit_unit(ctx);


 em_if_multi_set(ctx);

 adapter->rx_mbuf_sz = iflib_get_rx_mbuf_sz(ctx);
 em_initialize_receive_unit(ctx);


 if (if_getcapenable(ifp) & IFCAP_VLAN_HWTAGGING) {
  if (if_getcapenable(ifp) & IFCAP_VLAN_HWFILTER)

   em_setup_vlan_hw_support(adapter);
  else {
   u32 ctrl;
   ctrl = E1000_READ_REG(&adapter->hw, E1000_CTRL);
   ctrl |= E1000_CTRL_VME;
   E1000_WRITE_REG(&adapter->hw, E1000_CTRL, ctrl);
  }
 }


 em_if_set_promisc(ctx, IFF_PROMISC);
 e1000_clear_hw_cntrs_base_generic(&adapter->hw);


 if (adapter->hw.mac.type == e1000_82574) {
  int tmp = E1000_READ_REG(&adapter->hw, E1000_CTRL_EXT);

  tmp |= E1000_CTRL_EXT_PBA_CLR;
  E1000_WRITE_REG(&adapter->hw, E1000_CTRL_EXT, tmp);

  E1000_WRITE_REG(&adapter->hw, E1000_IVAR, adapter->ivars);
 } else if (adapter->intr_type == IFLIB_INTR_MSIX)
  igb_configure_queues(adapter);


 E1000_READ_REG(&adapter->hw, E1000_ICR);
 E1000_WRITE_REG(&adapter->hw, E1000_ICS, E1000_ICS_LSC);


 if (adapter->has_manage && adapter->has_amt)
  em_get_hw_control(adapter);


 if (adapter->hw.mac.type >= igb_mac_min &&
     adapter->hw.phy.media_type == e1000_media_type_copper) {
  if (adapter->hw.mac.type == e1000_i354)
   e1000_set_eee_i354(&adapter->hw, TRUE, TRUE);
  else
   e1000_set_eee_i350(&adapter->hw, TRUE, TRUE);
 }
}
