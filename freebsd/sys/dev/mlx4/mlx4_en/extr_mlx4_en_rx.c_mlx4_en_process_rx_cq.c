
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int if_capenable; int (* if_input ) (struct net_device*,struct mbuf*) ;} ;
struct TYPE_13__ {scalar_t__ lro_cnt; } ;
struct mlx4_en_rx_ring {int size_mask; unsigned int bytes; int cons; int prod; TYPE_6__ lro; int packets; int errors; scalar_t__ fcs_del; scalar_t__ buf; struct mlx4_en_rx_mbuf* mbuf; } ;
struct mlx4_en_rx_mbuf {int dummy; } ;
struct mlx4_en_rx_desc {int dummy; } ;
struct TYPE_12__ {int rx_coal_avg; int lro_misses; } ;
struct TYPE_11__ {int rx_chksum_none; int rx_chksum_good; } ;
struct mlx4_en_priv {int cqe_factor; int validate_loopback; TYPE_5__ pstats; TYPE_4__ port_stats; int port_up; TYPE_2__* mdev; struct mlx4_en_rx_ring** rx_ring; } ;
struct mlx4_cq {int cons_index; } ;
struct mlx4_en_cq {size_t ring; int size; struct mlx4_cqe* buf; struct mlx4_cq mcq; } ;
struct mlx4_cqe {int owner_sr_opcode; int status; int checksum; int sl_vid; int vlan_my_qpn; int immed_rss_invalid; int byte_cnt; } ;
struct TYPE_10__ {int flowid; int csum_flags; int csum_data; int ether_vtag; struct net_device* rcvif; } ;
struct mbuf {TYPE_3__ m_pkthdr; int m_flags; } ;
struct TYPE_8__ {int udp_rss; } ;
struct TYPE_9__ {TYPE_1__ profile; } ;


 int AVG_PERF_COUNTER (int ,int) ;
 size_t CQE_FACTOR_INDEX (int,int) ;
 int CSUM_DATA_VALID ;
 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 int CSUM_PSEUDO_HDR ;
 int IFCAP_LRO ;
 int IFCAP_RXCSUM ;
 int IFCAP_RXCSUM_IPV6 ;
 int INC_PERF_COUNTER (int ) ;
 int MLX4_CQE_CVLAN_PRESENT_MASK ;
 int MLX4_CQE_OWNER_MASK ;
 int MLX4_CQE_STATUS_IPOK ;
 int M_HASHTYPE_SET (struct mbuf*,int ) ;
 int M_VLANTAG ;
 scalar_t__ XNOR (int,int) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int cpu_to_be16 (int) ;
 int htons (int) ;
 scalar_t__ invalid_cqe (struct mlx4_en_priv*,struct mlx4_cqe*) ;
 scalar_t__ likely (int) ;
 int mlx4_cq_set_ci (struct mlx4_cq*) ;
 scalar_t__ mlx4_en_can_lro (int) ;
 int mlx4_en_rss_hash (int,int const) ;
 struct mbuf* mlx4_en_rx_mb (struct mlx4_en_priv*,struct mlx4_en_rx_ring*,struct mlx4_en_rx_desc*,struct mlx4_en_rx_mbuf*,unsigned int) ;
 int mlx4_en_update_rx_prod_db (struct mlx4_en_rx_ring*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int rmb () ;
 int stub1 (struct net_device*,struct mbuf*) ;
 int tcp_lro_flush_all (TYPE_6__*) ;
 scalar_t__ tcp_lro_rx (TYPE_6__*,struct mbuf*,int ) ;
 scalar_t__ unlikely (int) ;
 int validate_loopback (struct mlx4_en_priv*,struct mbuf*) ;
 int wmb () ;

int mlx4_en_process_rx_cq(struct net_device *dev, struct mlx4_en_cq *cq, int budget)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_cqe *cqe;
 struct mlx4_en_rx_ring *ring = priv->rx_ring[cq->ring];
 struct mlx4_en_rx_mbuf *mb_list;
 struct mlx4_en_rx_desc *rx_desc;
 struct mbuf *mb;
 struct mlx4_cq *mcq = &cq->mcq;
 struct mlx4_cqe *buf = cq->buf;
 int index;
 unsigned int length;
 int polled = 0;
 u32 cons_index = mcq->cons_index;
 u32 size_mask = ring->size_mask;
 int size = cq->size;
 int factor = priv->cqe_factor;
 const int udp_rss = priv->mdev->profile.udp_rss;

 if (!priv->port_up)
  return 0;




 index = cons_index & size_mask;
 cqe = &buf[CQE_FACTOR_INDEX(index, factor)];


 while (XNOR(cqe->owner_sr_opcode & MLX4_CQE_OWNER_MASK,
      cons_index & size)) {
  mb_list = ring->mbuf + index;
  rx_desc = ((struct mlx4_en_rx_desc *)ring->buf) + index;




  rmb();

  if (invalid_cqe(priv, cqe)) {
   goto next;
  }



  length = be32_to_cpu(cqe->byte_cnt);
  length -= ring->fcs_del;

  mb = mlx4_en_rx_mb(priv, ring, rx_desc, mb_list, length);
  if (unlikely(!mb)) {
   ring->errors++;
   goto next;
  }

  ring->bytes += length;
  ring->packets++;

  if (unlikely(priv->validate_loopback)) {
   validate_loopback(priv, mb);
   goto next;
  }


  mb->m_pkthdr.flowid = be32_to_cpu(cqe->immed_rss_invalid);
  M_HASHTYPE_SET(mb, mlx4_en_rss_hash(cqe->status, udp_rss));
  mb->m_pkthdr.rcvif = dev;
  if (be32_to_cpu(cqe->vlan_my_qpn) &
      MLX4_CQE_CVLAN_PRESENT_MASK) {
   mb->m_pkthdr.ether_vtag = be16_to_cpu(cqe->sl_vid);
   mb->m_flags |= M_VLANTAG;
  }
  if (likely(dev->if_capenable &
      (IFCAP_RXCSUM | IFCAP_RXCSUM_IPV6)) &&
      (cqe->status & cpu_to_be16(MLX4_CQE_STATUS_IPOK)) &&
      (cqe->checksum == cpu_to_be16(0xffff))) {
   priv->port_stats.rx_chksum_good++;
   mb->m_pkthdr.csum_flags =
       CSUM_IP_CHECKED | CSUM_IP_VALID |
       CSUM_DATA_VALID | CSUM_PSEUDO_HDR;
   mb->m_pkthdr.csum_data = htons(0xffff);
   INC_PERF_COUNTER(priv->pstats.lro_misses);
  } else {
   mb->m_pkthdr.csum_flags = 0;
   priv->port_stats.rx_chksum_none++;
  }


  dev->if_input(dev, mb);

next:
  ++cons_index;
  index = cons_index & size_mask;
  cqe = &buf[CQE_FACTOR_INDEX(index, factor)];
  if (++polled == budget)
   goto out;
 }

out:



 AVG_PERF_COUNTER(priv->pstats.rx_coal_avg, polled);
 mcq->cons_index = cons_index;
 mlx4_cq_set_ci(mcq);
 wmb();
 ring->cons = mcq->cons_index;
 ring->prod += polled;
 mlx4_en_update_rx_prod_db(ring);
 return polled;

}
