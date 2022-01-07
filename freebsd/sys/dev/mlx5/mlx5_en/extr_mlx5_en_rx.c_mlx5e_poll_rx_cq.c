
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct pfil_head {int dummy; } ;
struct TYPE_19__ {int next_wqe_index; } ;
struct mlx5e_rx_wqe {TYPE_6__ next; } ;
struct TYPE_13__ {int wq; } ;
struct TYPE_20__ {scalar_t__ lro_cnt; } ;
struct TYPE_17__ {int packets; int bytes; int wqe_err; } ;
struct mlx5e_rq {TYPE_11__ cq; int wq; TYPE_9__* ifp; TYPE_7__ lro; TYPE_4__ stats; TYPE_3__* mbuf; int dma_tag; TYPE_2__* channel; } ;
struct mlx5_cqe64 {int op_own; int byte_cnt; int wqe_counter; } ;
struct TYPE_18__ {scalar_t__ csum_flags; int numa_domain; } ;
struct mbuf {TYPE_5__ m_pkthdr; int m_data; scalar_t__ m_len; } ;
typedef int __be16 ;
struct TYPE_21__ {int if_capenable; int (* if_input ) (TYPE_9__*,struct mbuf*) ;int if_numa_domain; int if_vnet; } ;
struct TYPE_16__ {int dma_map; struct mbuf* mbuf; int data; } ;
struct TYPE_15__ {TYPE_1__* priv; } ;
struct TYPE_14__ {struct pfil_head* pfil; } ;


 int BUS_DMASYNC_POSTREAD ;
 int CURVNET_RESTORE () ;
 int CURVNET_SET_QUIET (int ) ;
 int IFCAP_LRO ;
 int KASSERT (int,char*) ;
 scalar_t__ MHLEN ;
 scalar_t__ MIN (scalar_t__,int ) ;
 int MLX5E_MAX_RX_BYTES ;
 scalar_t__ MLX5E_NET_IP_ALIGN ;
 scalar_t__ MLX5_COMPRESSED ;
 int MLX5_CQE_RESP_SEND ;
 int MT_DATA ;
 int M_NOWAIT ;


 scalar_t__ PFIL_HOOKED_IN (struct pfil_head*) ;
 scalar_t__ PFIL_IN ;
 scalar_t__ PFIL_MEMPTR ;
 int PFIL_PASS ;

 int atomic_thread_fence_rel () ;
 int bcopy (int ,int ,scalar_t__) ;
 size_t be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int caddr_t ;
 struct mbuf* m_gethdr (int ,int ) ;
 int mlx5_cqwq_pop (int *) ;
 int mlx5_cqwq_update_db_record (int *) ;
 scalar_t__ mlx5_get_cqe_format (struct mlx5_cqe64*) ;
 struct mlx5e_rx_wqe* mlx5_wq_ll_get_wqe (int *,size_t) ;
 int mlx5_wq_ll_pop (int *,int ,int *) ;
 int mlx5e_build_rx_mbuf (struct mlx5_cqe64*,struct mlx5e_rq*,struct mbuf*,scalar_t__) ;
 int mlx5e_decompress_cqes (TYPE_11__*) ;
 struct mlx5_cqe64* mlx5e_get_cqe (TYPE_11__*) ;
 int mtod (struct mbuf*,int ) ;
 struct mbuf* pfil_mem2mbuf (int ) ;
 int pfil_run_hooks (struct pfil_head*,int ,TYPE_9__*,scalar_t__,int *) ;
 int stub1 (TYPE_9__*,struct mbuf*) ;
 int tcp_lro_queue_mbuf (TYPE_7__*,struct mbuf*) ;
 scalar_t__ tcp_lro_rx (TYPE_7__*,struct mbuf*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
mlx5e_poll_rx_cq(struct mlx5e_rq *rq, int budget)
{
 struct pfil_head *pfil;
 int i, rv;

 CURVNET_SET_QUIET(rq->ifp->if_vnet);
 pfil = rq->channel->priv->pfil;
 for (i = 0; i < budget; i++) {
  struct mlx5e_rx_wqe *wqe;
  struct mlx5_cqe64 *cqe;
  struct mbuf *mb;
  __be16 wqe_counter_be;
  u16 wqe_counter;
  u32 byte_cnt, seglen;

  cqe = mlx5e_get_cqe(&rq->cq);
  if (!cqe)
   break;

  if (mlx5_get_cqe_format(cqe) == MLX5_COMPRESSED)
   mlx5e_decompress_cqes(&rq->cq);

  mlx5_cqwq_pop(&rq->cq.wq);

  wqe_counter_be = cqe->wqe_counter;
  wqe_counter = be16_to_cpu(wqe_counter_be);
  wqe = mlx5_wq_ll_get_wqe(&rq->wq, wqe_counter);
  byte_cnt = be32_to_cpu(cqe->byte_cnt);

  bus_dmamap_sync(rq->dma_tag,
      rq->mbuf[wqe_counter].dma_map,
      BUS_DMASYNC_POSTREAD);

  if (unlikely((cqe->op_own >> 4) != MLX5_CQE_RESP_SEND)) {
   rq->stats.wqe_err++;
   goto wq_ll_pop;
  }
  if (pfil != ((void*)0) && PFIL_HOOKED_IN(pfil)) {
   seglen = MIN(byte_cnt, MLX5E_MAX_RX_BYTES);
   rv = pfil_run_hooks(rq->channel->priv->pfil,
       rq->mbuf[wqe_counter].data, rq->ifp,
       seglen | PFIL_MEMPTR | PFIL_IN, ((void*)0));

   switch (rv) {
   case 129:
   case 130:





    rq->stats.packets++;
    goto wq_ll_pop;
   case 128:





    mb = pfil_mem2mbuf(rq->mbuf[wqe_counter].data);
    goto rx_common;
   default:




    KASSERT(rv == PFIL_PASS,
     ("Filter returned %d!\n", rv));
   }
  }
  if ((MHLEN - MLX5E_NET_IP_ALIGN) >= byte_cnt &&
      (mb = m_gethdr(M_NOWAIT, MT_DATA)) != ((void*)0)) {

   mb->m_len = MHLEN - MLX5E_NET_IP_ALIGN;

   mb->m_data += MLX5E_NET_IP_ALIGN;

   bcopy(rq->mbuf[wqe_counter].data, mtod(mb, caddr_t),
       byte_cnt);
  } else {
   mb = rq->mbuf[wqe_counter].mbuf;
   rq->mbuf[wqe_counter].mbuf = ((void*)0);

   bus_dmamap_unload(rq->dma_tag,
       rq->mbuf[wqe_counter].dma_map);
  }
rx_common:
  mlx5e_build_rx_mbuf(cqe, rq, mb, byte_cnt);
  rq->stats.bytes += byte_cnt;
  rq->stats.packets++;





  tcp_lro_queue_mbuf(&rq->lro, mb);
wq_ll_pop:
  mlx5_wq_ll_pop(&rq->wq, wqe_counter_be,
      &wqe->next.next_wqe_index);
 }
 CURVNET_RESTORE();

 mlx5_cqwq_update_db_record(&rq->cq.wq);


 atomic_thread_fence_rel();
 return (i);
}
