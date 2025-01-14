
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union e1000_rx_desc_extended {int dummy; } e1000_rx_desc_extended ;
typedef int uint32_t ;
typedef int u64 ;
typedef int u32 ;
struct rx_ring {int rx_paddr; int hdr_split; } ;
struct ifnet {int * if_vlantrunk; } ;
struct em_rx_queue {struct rx_ring rxr; } ;
struct e1000_rx_desc {int dummy; } ;
struct TYPE_7__ {scalar_t__ type; int mc_filter_type; } ;
struct e1000_hw {TYPE_3__ mac; } ;
struct TYPE_6__ {int value; } ;
struct TYPE_5__ {int value; } ;
struct adapter {int tx_num_queues; int rx_num_queues; int rx_mbuf_sz; scalar_t__ fc; struct e1000_hw hw; struct em_rx_queue* rx_queues; TYPE_2__ rx_int_delay; TYPE_1__ rx_abs_int_delay; TYPE_4__* shared; } ;
typedef TYPE_4__* if_softc_ctx_t ;
typedef int if_ctx_t ;
struct TYPE_8__ {int* isc_nrxd; int isc_max_frame_size; } ;


 int DEFAULT_ITR ;
 int E1000_EITR_82574 (int) ;
 int E1000_ITR ;
 int E1000_RADV ;
 int E1000_RCTL ;
 int E1000_RCTL_BAM ;
 int E1000_RCTL_BSEX ;
 int E1000_RCTL_EN ;
 int E1000_RCTL_LBM_NO ;
 int E1000_RCTL_LPE ;
 int E1000_RCTL_MO_SHIFT ;
 int E1000_RCTL_RDMTS_HALF ;
 int E1000_RCTL_SBP ;
 int E1000_RCTL_SECRC ;
 int E1000_RCTL_SZ_2048 ;
 int E1000_RCTL_SZ_4096 ;
 int E1000_RCTL_SZ_8192 ;
 int E1000_RCTL_VFE ;
 int E1000_RDBAH (int) ;
 int E1000_RDBAL (int) ;
 int E1000_RDH (int) ;
 int E1000_RDLEN (int) ;
 int E1000_RDT (int) ;
 int E1000_RDTR ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_RFCTL ;
 int E1000_RFCTL_ACK_DIS ;
 int E1000_RFCTL_EXTEN ;
 int E1000_RLPML ;
 int E1000_RXCSUM ;
 int E1000_RXCSUM_CRCOFL ;
 int E1000_RXCSUM_IPOFL ;
 int E1000_RXCSUM_IPPCSE ;
 int E1000_RXCSUM_PCSD ;
 int E1000_RXCSUM_TUOFL ;
 int E1000_RXDCTL (int) ;
 int E1000_RXDCTL_QUEUE_ENABLE ;
 int E1000_SRRCTL (int) ;
 int E1000_SRRCTL_BSIZEPKT_SHIFT ;
 int E1000_SRRCTL_DESCTYPE_ADV_ONEBUF ;
 int E1000_SRRCTL_DROP_EN ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ ETHERMTU ;
 int FALSE ;
 int IFCAP_RXCSUM ;
 int IGB_RX_HTHRESH ;
 int IGB_RX_PTHRESH ;
 int IGB_RX_WTHRESH ;
 int INIT_DEBUGOUT (char*) ;
 int MCLBYTES ;
 int MJUMPAGESIZE ;
 int TRUE ;
 scalar_t__ VLAN_TAG_SIZE ;
 scalar_t__ e1000_82540 ;
 scalar_t__ e1000_82543 ;
 scalar_t__ e1000_82573 ;
 scalar_t__ e1000_82574 ;
 scalar_t__ e1000_82575 ;
 scalar_t__ e1000_82583 ;
 scalar_t__ e1000_fc_none ;
 scalar_t__ e1000_fc_rx_pause ;
 scalar_t__ e1000_ich10lan ;
 scalar_t__ e1000_ich9lan ;
 int e1000_lv_jumbo_workaround_ich8lan (struct e1000_hw*,int ) ;
 scalar_t__ e1000_pch2lan ;
 int em_disable_crc_stripping ;
 int em_initialize_rss_mapping (struct adapter*) ;
 int if_getcapenable (struct ifnet*) ;
 scalar_t__ if_getmtu (struct ifnet*) ;
 struct ifnet* iflib_get_ifp (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int igb_header_split ;
 int igb_initialize_rss_mapping (struct adapter*) ;
 scalar_t__ igb_mac_min ;

__attribute__((used)) static void
em_initialize_receive_unit(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 if_softc_ctx_t scctx = adapter->shared;
 struct ifnet *ifp = iflib_get_ifp(ctx);
 struct e1000_hw *hw = &adapter->hw;
 struct em_rx_queue *que;
 int i;
 u32 rctl, rxcsum, rfctl;

 INIT_DEBUGOUT("em_initialize_receive_units: begin");





 rctl = E1000_READ_REG(hw, E1000_RCTL);

 if ((hw->mac.type != e1000_82574) && (hw->mac.type != e1000_82583))
  E1000_WRITE_REG(hw, E1000_RCTL, rctl & ~E1000_RCTL_EN);


 rctl &= ~(3 << E1000_RCTL_MO_SHIFT);
 rctl |= E1000_RCTL_EN | E1000_RCTL_BAM |
     E1000_RCTL_LBM_NO | E1000_RCTL_RDMTS_HALF |
     (hw->mac.mc_filter_type << E1000_RCTL_MO_SHIFT);


 rctl &= ~E1000_RCTL_SBP;


 if (if_getmtu(ifp) > ETHERMTU)
  rctl |= E1000_RCTL_LPE;
 else
  rctl &= ~E1000_RCTL_LPE;


 if (!em_disable_crc_stripping)
  rctl |= E1000_RCTL_SECRC;

 if (adapter->hw.mac.type >= e1000_82540) {
  E1000_WRITE_REG(&adapter->hw, E1000_RADV,
       adapter->rx_abs_int_delay.value);





  E1000_WRITE_REG(hw, E1000_ITR, DEFAULT_ITR);
 }
 E1000_WRITE_REG(&adapter->hw, E1000_RDTR,
     adapter->rx_int_delay.value);


 rfctl = E1000_READ_REG(hw, E1000_RFCTL);
 rfctl |= E1000_RFCTL_EXTEN;




 if (hw->mac.type == e1000_82574) {
  for (int i = 0; i < 4; i++)
   E1000_WRITE_REG(hw, E1000_EITR_82574(i),
       DEFAULT_ITR);

  rfctl |= E1000_RFCTL_ACK_DIS;
 }
 E1000_WRITE_REG(hw, E1000_RFCTL, rfctl);

 rxcsum = E1000_READ_REG(hw, E1000_RXCSUM);
 if (if_getcapenable(ifp) & IFCAP_RXCSUM &&
     adapter->hw.mac.type >= e1000_82543) {
  if (adapter->tx_num_queues > 1) {
   if (adapter->hw.mac.type >= igb_mac_min) {
    rxcsum |= E1000_RXCSUM_PCSD;
    if (hw->mac.type != e1000_82575)
     rxcsum |= E1000_RXCSUM_CRCOFL;
   } else
    rxcsum |= E1000_RXCSUM_TUOFL |
     E1000_RXCSUM_IPOFL |
     E1000_RXCSUM_PCSD;
  } else {
   if (adapter->hw.mac.type >= igb_mac_min)
    rxcsum |= E1000_RXCSUM_IPPCSE;
   else
    rxcsum |= E1000_RXCSUM_TUOFL | E1000_RXCSUM_IPOFL;
   if (adapter->hw.mac.type > e1000_82575)
    rxcsum |= E1000_RXCSUM_CRCOFL;
  }
 } else
  rxcsum &= ~E1000_RXCSUM_TUOFL;

 E1000_WRITE_REG(hw, E1000_RXCSUM, rxcsum);

 if (adapter->rx_num_queues > 1) {
  if (adapter->hw.mac.type >= igb_mac_min)
   igb_initialize_rss_mapping(adapter);
  else
   em_initialize_rss_mapping(adapter);
 }
 if (hw->mac.type == e1000_82573)
  E1000_WRITE_REG(hw, E1000_RDTR, 0x20);

 for (i = 0, que = adapter->rx_queues; i < adapter->rx_num_queues; i++, que++) {
  struct rx_ring *rxr = &que->rxr;

  u64 bus_addr = rxr->rx_paddr;




  E1000_WRITE_REG(hw, E1000_RDLEN(i),
      scctx->isc_nrxd[0] * sizeof(union e1000_rx_desc_extended));
  E1000_WRITE_REG(hw, E1000_RDBAH(i), (u32)(bus_addr >> 32));
  E1000_WRITE_REG(hw, E1000_RDBAL(i), (u32)bus_addr);

  E1000_WRITE_REG(hw, E1000_RDH(i), 0);
  E1000_WRITE_REG(hw, E1000_RDT(i), 0);
 }
 if (((adapter->hw.mac.type == e1000_ich9lan) ||
     (adapter->hw.mac.type == e1000_pch2lan) ||
     (adapter->hw.mac.type == e1000_ich10lan)) &&
     (if_getmtu(ifp) > ETHERMTU)) {
  u32 rxdctl = E1000_READ_REG(hw, E1000_RXDCTL(0));
  E1000_WRITE_REG(hw, E1000_RXDCTL(0), rxdctl | 3);
 } else if (adapter->hw.mac.type == e1000_82574) {
  for (int i = 0; i < adapter->rx_num_queues; i++) {
   u32 rxdctl = E1000_READ_REG(hw, E1000_RXDCTL(i));
   rxdctl |= 0x20;
   rxdctl |= 4 << 8;
   rxdctl |= 4 << 16;
   rxdctl |= 1 << 24;
   E1000_WRITE_REG(hw, E1000_RXDCTL(i), rxdctl);
  }
 } else if (adapter->hw.mac.type >= igb_mac_min) {
  u32 psize, srrctl = 0;

  if (if_getmtu(ifp) > ETHERMTU) {

   if (adapter->rx_mbuf_sz <= 4096) {
    srrctl |= 4096 >> E1000_SRRCTL_BSIZEPKT_SHIFT;
    rctl |= E1000_RCTL_SZ_4096 | E1000_RCTL_BSEX;
   } else if (adapter->rx_mbuf_sz > 4096) {
    srrctl |= 8192 >> E1000_SRRCTL_BSIZEPKT_SHIFT;
    rctl |= E1000_RCTL_SZ_8192 | E1000_RCTL_BSEX;
   }
   psize = scctx->isc_max_frame_size;

   if (ifp->if_vlantrunk != ((void*)0))
    psize += VLAN_TAG_SIZE;
   E1000_WRITE_REG(&adapter->hw, E1000_RLPML, psize);
  } else {
   srrctl |= 2048 >> E1000_SRRCTL_BSIZEPKT_SHIFT;
   rctl |= E1000_RCTL_SZ_2048;
  }







  if ((adapter->rx_num_queues > 1) &&
      (adapter->fc == e1000_fc_none ||
       adapter->fc == e1000_fc_rx_pause)) {
   srrctl |= E1000_SRRCTL_DROP_EN;
  }

  for (i = 0, que = adapter->rx_queues; i < adapter->rx_num_queues; i++, que++) {
   struct rx_ring *rxr = &que->rxr;
   u64 bus_addr = rxr->rx_paddr;
   u32 rxdctl;





   srrctl |= E1000_SRRCTL_DESCTYPE_ADV_ONEBUF;


   E1000_WRITE_REG(hw, E1000_RDLEN(i),
     scctx->isc_nrxd[0] * sizeof(struct e1000_rx_desc));
   E1000_WRITE_REG(hw, E1000_RDBAH(i),
     (uint32_t)(bus_addr >> 32));
   E1000_WRITE_REG(hw, E1000_RDBAL(i),
     (uint32_t)bus_addr);
   E1000_WRITE_REG(hw, E1000_SRRCTL(i), srrctl);

   rxdctl = E1000_READ_REG(hw, E1000_RXDCTL(i));
   rxdctl |= E1000_RXDCTL_QUEUE_ENABLE;
   rxdctl &= 0xFFF00000;
   rxdctl |= IGB_RX_PTHRESH;
   rxdctl |= IGB_RX_HTHRESH << 8;
   rxdctl |= IGB_RX_WTHRESH << 16;
   E1000_WRITE_REG(hw, E1000_RXDCTL(i), rxdctl);
  }
 } else if (adapter->hw.mac.type >= e1000_pch2lan) {
  if (if_getmtu(ifp) > ETHERMTU)
   e1000_lv_jumbo_workaround_ich8lan(hw, TRUE);
  else
   e1000_lv_jumbo_workaround_ich8lan(hw, FALSE);
 }


 rctl &= ~E1000_RCTL_VFE;

 if (adapter->hw.mac.type < igb_mac_min) {
  if (adapter->rx_mbuf_sz == MCLBYTES)
   rctl |= E1000_RCTL_SZ_2048;
  else if (adapter->rx_mbuf_sz == MJUMPAGESIZE)
   rctl |= E1000_RCTL_SZ_4096 | E1000_RCTL_BSEX;
  else if (adapter->rx_mbuf_sz > MJUMPAGESIZE)
   rctl |= E1000_RCTL_SZ_8192 | E1000_RCTL_BSEX;


  rctl &= ~0x00000C00;
 }


 E1000_WRITE_REG(hw, E1000_RCTL, rctl);

 return;
}
