
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct tx_ring {int me; } ;
struct rx_ring {int me; } ;
struct TYPE_7__ {int (* identify ) (struct ixgbe_hw*) ;} ;
struct TYPE_8__ {scalar_t__ type; TYPE_3__ ops; } ;
struct TYPE_6__ {scalar_t__ type; int addr; } ;
struct TYPE_5__ {int rar_used_count; } ;
struct ixgbe_hw {TYPE_4__ phy; TYPE_2__ mac; TYPE_1__ addr_ctrl; } ;
struct ix_tx_queue {struct tx_ring txr; } ;
struct ix_rx_queue {struct rx_ring rxr; } ;
struct ifnet {scalar_t__ if_mtu; } ;
struct adapter {int max_frame_size; int num_tx_queues; int num_rx_queues; int feat_en; int vector; struct ix_rx_queue* rx_queues; struct ix_tx_queue* tx_queues; scalar_t__ task_requests; int rx_mbuf_sz; int pool; struct ixgbe_hw hw; } ;
typedef int if_ctx_t ;
typedef int device_t ;


 scalar_t__ ETHERMTU ;
 int IF_LLADDR (struct ifnet*) ;
 int INIT_DEBUGOUT (char*) ;
 int IXGBE_CTRL_EXT ;
 int IXGBE_CTRL_EXT_PFRSTD ;
 int IXGBE_EIAM ;
 int IXGBE_EIAM_EX (int) ;
 int IXGBE_EICS_RTX_QUEUE ;
 int IXGBE_EITR (int ) ;
 int IXGBE_ERR_SFP_NOT_SUPPORTED ;
 int IXGBE_ETH_LENGTH_OF_ADDRESS ;
 int IXGBE_FEATURE_SRIOV ;
 int IXGBE_LINK_ITR ;
 int IXGBE_MHADD ;
 int IXGBE_MHADD_MFS_MASK ;
 int IXGBE_MHADD_MFS_SHIFT ;
 int IXGBE_RAH_AV ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXCTRL ;
 int IXGBE_RXCTRL_DMBYPS ;
 int IXGBE_RXCTRL_RXEN ;
 int IXGBE_RXDCTL (int ) ;
 int IXGBE_RXDCTL_ENABLE ;
 int IXGBE_TXDCTL (int ) ;
 int IXGBE_TXDCTL_ENABLE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int TRUE ;
 int bcopy (int ,int ,int ) ;
 int device_printf (int ,char*) ;
 int iflib_get_dev (int ) ;
 struct ifnet* iflib_get_ifp (int ) ;
 int iflib_get_rx_mbuf_sz (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int ixgbe_align_all_queue_indices (struct adapter*) ;
 int ixgbe_config_delay_values (struct adapter*) ;
 int ixgbe_config_dmac (struct adapter*) ;
 int ixgbe_config_gpie (struct adapter*) ;
 int ixgbe_config_link (int ) ;
 int ixgbe_configure_ivars (struct adapter*) ;
 scalar_t__ ixgbe_enable_msix ;
 int ixgbe_enable_rx_dma (struct ixgbe_hw*,int) ;
 int ixgbe_if_enable_intr (int ) ;
 int ixgbe_if_multi_set (int ) ;
 int ixgbe_init_fdir (struct adapter*) ;
 int ixgbe_init_hw (struct ixgbe_hw*) ;
 int ixgbe_initialize_iov (struct adapter*) ;
 int ixgbe_initialize_receive_units (int ) ;
 int ixgbe_initialize_transmit_units (int ) ;
 scalar_t__ ixgbe_mac_82598EB ;
 scalar_t__ ixgbe_phy_none ;
 int ixgbe_set_ivar (struct adapter*,int ,int ,int) ;
 int ixgbe_set_phy_power (struct ixgbe_hw*,int ) ;
 int ixgbe_set_rar (struct ixgbe_hw*,int ,int ,int ,int) ;
 int ixgbe_setup_vlan_hw_support (int ) ;
 int ixgbe_start_hw (struct ixgbe_hw*) ;
 int msec_delay (int) ;
 int stub1 (struct ixgbe_hw*) ;
 int wmb () ;

void
ixgbe_if_init(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ifnet *ifp = iflib_get_ifp(ctx);
 device_t dev = iflib_get_dev(ctx);
 struct ixgbe_hw *hw = &adapter->hw;
 struct ix_rx_queue *rx_que;
 struct ix_tx_queue *tx_que;
 u32 txdctl, mhadd;
 u32 rxdctl, rxctrl;
 u32 ctrl_ext;

 int i, j, err;

 INIT_DEBUGOUT("ixgbe_if_init: begin");


 ixgbe_align_all_queue_indices(adapter);


 ixgbe_set_rar(hw, 0, hw->mac.addr, adapter->pool, IXGBE_RAH_AV);


 bcopy(IF_LLADDR(ifp), hw->mac.addr, IXGBE_ETH_LENGTH_OF_ADDRESS);
 ixgbe_set_rar(hw, 0, hw->mac.addr, adapter->pool, 1);
 hw->addr_ctrl.rar_used_count = 1;

 ixgbe_init_hw(hw);

 ixgbe_initialize_iov(adapter);

 ixgbe_initialize_transmit_units(ctx);


 ixgbe_if_multi_set(ctx);


 adapter->rx_mbuf_sz = iflib_get_rx_mbuf_sz(ctx);


 ixgbe_initialize_receive_units(ctx);





 adapter->task_requests = 0;


 ixgbe_config_gpie(adapter);


 if (ifp->if_mtu > ETHERMTU) {

  mhadd = IXGBE_READ_REG(hw, IXGBE_MHADD);
  mhadd &= ~IXGBE_MHADD_MFS_MASK;
  mhadd |= adapter->max_frame_size << IXGBE_MHADD_MFS_SHIFT;
  IXGBE_WRITE_REG(hw, IXGBE_MHADD, mhadd);
 }


 for (i = 0, tx_que = adapter->tx_queues; i < adapter->num_tx_queues; i++, tx_que++) {
  struct tx_ring *txr = &tx_que->txr;

  txdctl = IXGBE_READ_REG(hw, IXGBE_TXDCTL(txr->me));
  txdctl |= IXGBE_TXDCTL_ENABLE;

  txdctl |= (8 << 16);







  txdctl |= (32 << 0) | (1 << 8);
  IXGBE_WRITE_REG(hw, IXGBE_TXDCTL(txr->me), txdctl);
 }

 for (i = 0, rx_que = adapter->rx_queues; i < adapter->num_rx_queues; i++, rx_que++) {
  struct rx_ring *rxr = &rx_que->rxr;

  rxdctl = IXGBE_READ_REG(hw, IXGBE_RXDCTL(rxr->me));
  if (hw->mac.type == ixgbe_mac_82598EB) {





   rxdctl &= ~0x3FFFFF;
   rxdctl |= 0x080420;
  }
  rxdctl |= IXGBE_RXDCTL_ENABLE;
  IXGBE_WRITE_REG(hw, IXGBE_RXDCTL(rxr->me), rxdctl);
  for (j = 0; j < 10; j++) {
   if (IXGBE_READ_REG(hw, IXGBE_RXDCTL(rxr->me)) &
       IXGBE_RXDCTL_ENABLE)
    break;
   else
    msec_delay(1);
  }
  wmb();
 }


 rxctrl = IXGBE_READ_REG(hw, IXGBE_RXCTRL);
 if (hw->mac.type == ixgbe_mac_82598EB)
  rxctrl |= IXGBE_RXCTRL_DMBYPS;
 rxctrl |= IXGBE_RXCTRL_RXEN;
 ixgbe_enable_rx_dma(hw, rxctrl);


 if (ixgbe_enable_msix) {
  ixgbe_configure_ivars(adapter);

  if (hw->mac.type == ixgbe_mac_82598EB)
   IXGBE_WRITE_REG(hw, IXGBE_EIAM, IXGBE_EICS_RTX_QUEUE);
  else {
   IXGBE_WRITE_REG(hw, IXGBE_EIAM_EX(0), 0xFFFFFFFF);
   IXGBE_WRITE_REG(hw, IXGBE_EIAM_EX(1), 0xFFFFFFFF);
  }
 } else {
  ixgbe_set_ivar(adapter, 0, 0, 0);
  ixgbe_set_ivar(adapter, 0, 0, 1);
  IXGBE_WRITE_REG(hw, IXGBE_EIAM, IXGBE_EICS_RTX_QUEUE);
 }

 ixgbe_init_fdir(adapter);





 if (hw->phy.type == ixgbe_phy_none) {
  err = hw->phy.ops.identify(hw);
  if (err == IXGBE_ERR_SFP_NOT_SUPPORTED) {
   device_printf(dev,
       "Unsupported SFP+ module type was detected.\n");
   return;
  }
 }


 IXGBE_WRITE_REG(hw, IXGBE_EITR(adapter->vector), IXGBE_LINK_ITR);


 ixgbe_set_phy_power(hw, TRUE);


 ixgbe_config_link(ctx);


 ixgbe_config_delay_values(adapter);


 ixgbe_start_hw(hw);


 ixgbe_setup_vlan_hw_support(ctx);


 ixgbe_config_dmac(adapter);


 ixgbe_if_enable_intr(ctx);


 if (adapter->feat_en & IXGBE_FEATURE_SRIOV) {
  ctrl_ext = IXGBE_READ_REG(hw, IXGBE_CTRL_EXT);
  ctrl_ext |= IXGBE_CTRL_EXT_PFRSTD;
  IXGBE_WRITE_REG(hw, IXGBE_CTRL_EXT, ctrl_ext);
 }

}
