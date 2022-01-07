
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ixl_vsi {TYPE_2__* shared; } ;
struct ixl_vf {int vf_flags; int vsi; } ;
struct TYPE_3__ {scalar_t__ rx_discards; int tx_broadcast; int rx_broadcast; int tx_multicast; int rx_multicast; int tx_unicast; int rx_unicast; int tx_bytes; int rx_bytes; } ;
struct i40e_hw_port_stats {scalar_t__ link_xoff_rx; scalar_t__ crc_errors; scalar_t__ illegal_bytes; scalar_t__ tx_dropped_link_down; scalar_t__ mac_local_faults; scalar_t__ mac_remote_faults; scalar_t__ rx_length_errors; scalar_t__ link_xon_rx; scalar_t__ link_xon_tx; scalar_t__ link_xoff_tx; scalar_t__ rx_undersize; scalar_t__ rx_fragments; scalar_t__ rx_oversize; scalar_t__ rx_jabber; int tx_size_big; int tx_size_1522; int tx_size_1023; int tx_size_511; int tx_size_255; int tx_size_127; int tx_size_64; int rx_size_big; int rx_size_1522; int rx_size_1023; int rx_size_511; int rx_size_255; int rx_size_127; int rx_size_64; TYPE_1__ eth; } ;
struct i40e_hw {int port; } ;
struct ixl_pf {int stat_offsets_loaded; int num_vfs; struct ixl_vf* vfs; struct i40e_hw_port_stats stats; struct i40e_hw_port_stats stats_offsets; struct ixl_vsi vsi; struct i40e_hw hw; } ;
struct TYPE_4__ {int isc_pause_frames; } ;


 int I40E_GLPRT_BPRCH (int ) ;
 int I40E_GLPRT_BPRCL (int ) ;
 int I40E_GLPRT_BPTCH (int ) ;
 int I40E_GLPRT_BPTCL (int ) ;
 int I40E_GLPRT_CRCERRS (int ) ;
 int I40E_GLPRT_GORCH (int ) ;
 int I40E_GLPRT_GORCL (int ) ;
 int I40E_GLPRT_GOTCH (int ) ;
 int I40E_GLPRT_GOTCL (int ) ;
 int I40E_GLPRT_ILLERRC (int ) ;
 int I40E_GLPRT_LXOFFRXC (int ) ;
 int I40E_GLPRT_LXOFFTXC (int ) ;
 int I40E_GLPRT_LXONRXC (int ) ;
 int I40E_GLPRT_LXONTXC (int ) ;
 int I40E_GLPRT_MLFC (int ) ;
 int I40E_GLPRT_MPRCH (int ) ;
 int I40E_GLPRT_MPRCL (int ) ;
 int I40E_GLPRT_MPTCH (int ) ;
 int I40E_GLPRT_MPTCL (int ) ;
 int I40E_GLPRT_MRFC (int ) ;
 int I40E_GLPRT_PRC1023H (int ) ;
 int I40E_GLPRT_PRC1023L (int ) ;
 int I40E_GLPRT_PRC127H (int ) ;
 int I40E_GLPRT_PRC127L (int ) ;
 int I40E_GLPRT_PRC1522H (int ) ;
 int I40E_GLPRT_PRC1522L (int ) ;
 int I40E_GLPRT_PRC255H (int ) ;
 int I40E_GLPRT_PRC255L (int ) ;
 int I40E_GLPRT_PRC511H (int ) ;
 int I40E_GLPRT_PRC511L (int ) ;
 int I40E_GLPRT_PRC64H (int ) ;
 int I40E_GLPRT_PRC64L (int ) ;
 int I40E_GLPRT_PRC9522H (int ) ;
 int I40E_GLPRT_PRC9522L (int ) ;
 int I40E_GLPRT_PTC1023H (int ) ;
 int I40E_GLPRT_PTC1023L (int ) ;
 int I40E_GLPRT_PTC127H (int ) ;
 int I40E_GLPRT_PTC127L (int ) ;
 int I40E_GLPRT_PTC1522H (int ) ;
 int I40E_GLPRT_PTC1522L (int ) ;
 int I40E_GLPRT_PTC255H (int ) ;
 int I40E_GLPRT_PTC255L (int ) ;
 int I40E_GLPRT_PTC511H (int ) ;
 int I40E_GLPRT_PTC511L (int ) ;
 int I40E_GLPRT_PTC64H (int ) ;
 int I40E_GLPRT_PTC64L (int ) ;
 int I40E_GLPRT_PTC9522H (int ) ;
 int I40E_GLPRT_PTC9522L (int ) ;
 int I40E_GLPRT_RDPC (int ) ;
 int I40E_GLPRT_RFC (int ) ;
 int I40E_GLPRT_RJC (int ) ;
 int I40E_GLPRT_RLEC (int ) ;
 int I40E_GLPRT_ROC (int ) ;
 int I40E_GLPRT_RUC (int ) ;
 int I40E_GLPRT_TDOLD (int ) ;
 int I40E_GLPRT_UPRCH (int ) ;
 int I40E_GLPRT_UPRCL (int ) ;
 int I40E_GLPRT_UPTCH (int ) ;
 int I40E_GLPRT_UPTCL (int ) ;
 int VF_FLAG_ENABLED ;
 int ixl_stat_update32 (struct i40e_hw*,int ,int,scalar_t__*,scalar_t__*) ;
 int ixl_stat_update48 (struct i40e_hw*,int ,int ,int,int *,int *) ;
 int ixl_update_eth_stats (int *) ;
 int ixl_update_vsi_stats (struct ixl_vsi*) ;

void
ixl_update_stats_counters(struct ixl_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 struct ixl_vsi *vsi = &pf->vsi;
 struct ixl_vf *vf;
 u64 prev_link_xoff_rx = pf->stats.link_xoff_rx;

 struct i40e_hw_port_stats *nsd = &pf->stats;
 struct i40e_hw_port_stats *osd = &pf->stats_offsets;


 ixl_stat_update32(hw, I40E_GLPRT_CRCERRS(hw->port),
      pf->stat_offsets_loaded,
      &osd->crc_errors, &nsd->crc_errors);
 ixl_stat_update32(hw, I40E_GLPRT_ILLERRC(hw->port),
      pf->stat_offsets_loaded,
      &osd->illegal_bytes, &nsd->illegal_bytes);
 ixl_stat_update48(hw, I40E_GLPRT_GORCH(hw->port),
      I40E_GLPRT_GORCL(hw->port),
      pf->stat_offsets_loaded,
      &osd->eth.rx_bytes, &nsd->eth.rx_bytes);
 ixl_stat_update48(hw, I40E_GLPRT_GOTCH(hw->port),
      I40E_GLPRT_GOTCL(hw->port),
      pf->stat_offsets_loaded,
      &osd->eth.tx_bytes, &nsd->eth.tx_bytes);
 ixl_stat_update32(hw, I40E_GLPRT_RDPC(hw->port),
      pf->stat_offsets_loaded,
      &osd->eth.rx_discards,
      &nsd->eth.rx_discards);
 ixl_stat_update48(hw, I40E_GLPRT_UPRCH(hw->port),
      I40E_GLPRT_UPRCL(hw->port),
      pf->stat_offsets_loaded,
      &osd->eth.rx_unicast,
      &nsd->eth.rx_unicast);
 ixl_stat_update48(hw, I40E_GLPRT_UPTCH(hw->port),
      I40E_GLPRT_UPTCL(hw->port),
      pf->stat_offsets_loaded,
      &osd->eth.tx_unicast,
      &nsd->eth.tx_unicast);
 ixl_stat_update48(hw, I40E_GLPRT_MPRCH(hw->port),
      I40E_GLPRT_MPRCL(hw->port),
      pf->stat_offsets_loaded,
      &osd->eth.rx_multicast,
      &nsd->eth.rx_multicast);
 ixl_stat_update48(hw, I40E_GLPRT_MPTCH(hw->port),
      I40E_GLPRT_MPTCL(hw->port),
      pf->stat_offsets_loaded,
      &osd->eth.tx_multicast,
      &nsd->eth.tx_multicast);
 ixl_stat_update48(hw, I40E_GLPRT_BPRCH(hw->port),
      I40E_GLPRT_BPRCL(hw->port),
      pf->stat_offsets_loaded,
      &osd->eth.rx_broadcast,
      &nsd->eth.rx_broadcast);
 ixl_stat_update48(hw, I40E_GLPRT_BPTCH(hw->port),
      I40E_GLPRT_BPTCL(hw->port),
      pf->stat_offsets_loaded,
      &osd->eth.tx_broadcast,
      &nsd->eth.tx_broadcast);

 ixl_stat_update32(hw, I40E_GLPRT_TDOLD(hw->port),
      pf->stat_offsets_loaded,
      &osd->tx_dropped_link_down,
      &nsd->tx_dropped_link_down);
 ixl_stat_update32(hw, I40E_GLPRT_MLFC(hw->port),
      pf->stat_offsets_loaded,
      &osd->mac_local_faults,
      &nsd->mac_local_faults);
 ixl_stat_update32(hw, I40E_GLPRT_MRFC(hw->port),
      pf->stat_offsets_loaded,
      &osd->mac_remote_faults,
      &nsd->mac_remote_faults);
 ixl_stat_update32(hw, I40E_GLPRT_RLEC(hw->port),
      pf->stat_offsets_loaded,
      &osd->rx_length_errors,
      &nsd->rx_length_errors);


 ixl_stat_update32(hw, I40E_GLPRT_LXONRXC(hw->port),
      pf->stat_offsets_loaded,
      &osd->link_xon_rx, &nsd->link_xon_rx);
 ixl_stat_update32(hw, I40E_GLPRT_LXONTXC(hw->port),
      pf->stat_offsets_loaded,
      &osd->link_xon_tx, &nsd->link_xon_tx);
 ixl_stat_update32(hw, I40E_GLPRT_LXOFFRXC(hw->port),
      pf->stat_offsets_loaded,
      &osd->link_xoff_rx, &nsd->link_xoff_rx);
 ixl_stat_update32(hw, I40E_GLPRT_LXOFFTXC(hw->port),
      pf->stat_offsets_loaded,
      &osd->link_xoff_tx, &nsd->link_xoff_tx);





 if (pf->stats.link_xoff_rx != prev_link_xoff_rx)
  vsi->shared->isc_pause_frames = 1;


 ixl_stat_update48(hw, I40E_GLPRT_PRC64H(hw->port),
      I40E_GLPRT_PRC64L(hw->port),
      pf->stat_offsets_loaded,
      &osd->rx_size_64, &nsd->rx_size_64);
 ixl_stat_update48(hw, I40E_GLPRT_PRC127H(hw->port),
      I40E_GLPRT_PRC127L(hw->port),
      pf->stat_offsets_loaded,
      &osd->rx_size_127, &nsd->rx_size_127);
 ixl_stat_update48(hw, I40E_GLPRT_PRC255H(hw->port),
      I40E_GLPRT_PRC255L(hw->port),
      pf->stat_offsets_loaded,
      &osd->rx_size_255, &nsd->rx_size_255);
 ixl_stat_update48(hw, I40E_GLPRT_PRC511H(hw->port),
      I40E_GLPRT_PRC511L(hw->port),
      pf->stat_offsets_loaded,
      &osd->rx_size_511, &nsd->rx_size_511);
 ixl_stat_update48(hw, I40E_GLPRT_PRC1023H(hw->port),
      I40E_GLPRT_PRC1023L(hw->port),
      pf->stat_offsets_loaded,
      &osd->rx_size_1023, &nsd->rx_size_1023);
 ixl_stat_update48(hw, I40E_GLPRT_PRC1522H(hw->port),
      I40E_GLPRT_PRC1522L(hw->port),
      pf->stat_offsets_loaded,
      &osd->rx_size_1522, &nsd->rx_size_1522);
 ixl_stat_update48(hw, I40E_GLPRT_PRC9522H(hw->port),
      I40E_GLPRT_PRC9522L(hw->port),
      pf->stat_offsets_loaded,
      &osd->rx_size_big, &nsd->rx_size_big);


 ixl_stat_update48(hw, I40E_GLPRT_PTC64H(hw->port),
      I40E_GLPRT_PTC64L(hw->port),
      pf->stat_offsets_loaded,
      &osd->tx_size_64, &nsd->tx_size_64);
 ixl_stat_update48(hw, I40E_GLPRT_PTC127H(hw->port),
      I40E_GLPRT_PTC127L(hw->port),
      pf->stat_offsets_loaded,
      &osd->tx_size_127, &nsd->tx_size_127);
 ixl_stat_update48(hw, I40E_GLPRT_PTC255H(hw->port),
      I40E_GLPRT_PTC255L(hw->port),
      pf->stat_offsets_loaded,
      &osd->tx_size_255, &nsd->tx_size_255);
 ixl_stat_update48(hw, I40E_GLPRT_PTC511H(hw->port),
      I40E_GLPRT_PTC511L(hw->port),
      pf->stat_offsets_loaded,
      &osd->tx_size_511, &nsd->tx_size_511);
 ixl_stat_update48(hw, I40E_GLPRT_PTC1023H(hw->port),
      I40E_GLPRT_PTC1023L(hw->port),
      pf->stat_offsets_loaded,
      &osd->tx_size_1023, &nsd->tx_size_1023);
 ixl_stat_update48(hw, I40E_GLPRT_PTC1522H(hw->port),
      I40E_GLPRT_PTC1522L(hw->port),
      pf->stat_offsets_loaded,
      &osd->tx_size_1522, &nsd->tx_size_1522);
 ixl_stat_update48(hw, I40E_GLPRT_PTC9522H(hw->port),
      I40E_GLPRT_PTC9522L(hw->port),
      pf->stat_offsets_loaded,
      &osd->tx_size_big, &nsd->tx_size_big);

 ixl_stat_update32(hw, I40E_GLPRT_RUC(hw->port),
      pf->stat_offsets_loaded,
      &osd->rx_undersize, &nsd->rx_undersize);
 ixl_stat_update32(hw, I40E_GLPRT_RFC(hw->port),
      pf->stat_offsets_loaded,
      &osd->rx_fragments, &nsd->rx_fragments);
 ixl_stat_update32(hw, I40E_GLPRT_ROC(hw->port),
      pf->stat_offsets_loaded,
      &osd->rx_oversize, &nsd->rx_oversize);
 ixl_stat_update32(hw, I40E_GLPRT_RJC(hw->port),
      pf->stat_offsets_loaded,
      &osd->rx_jabber, &nsd->rx_jabber);
 pf->stat_offsets_loaded = 1;



 ixl_update_vsi_stats(vsi);

 for (int i = 0; i < pf->num_vfs; i++) {
  vf = &pf->vfs[i];
  if (vf->vf_flags & VF_FLAG_ENABLED)
   ixl_update_eth_stats(&pf->vfs[i].vsi);
 }
}
