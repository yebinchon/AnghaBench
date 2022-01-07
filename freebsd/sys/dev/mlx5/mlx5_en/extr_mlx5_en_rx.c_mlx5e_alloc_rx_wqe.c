
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u16 ;
struct mlx5e_rx_wqe {TYPE_2__* data; } ;
struct mlx5e_rq {int nsegs; scalar_t__ wqe_sz; TYPE_3__* mbuf; int dma_tag; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct mbuf {int m_data; TYPE_1__ m_pkthdr; void* m_len; struct mbuf* m_next; } ;
struct TYPE_9__ {int ds_len; int ds_addr; } ;
typedef TYPE_4__ bus_dma_segment_t ;
struct TYPE_8__ {int dma_map; int data; struct mbuf* mbuf; } ;
struct TYPE_7__ {void* byte_count; void* addr; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMA_NOWAIT ;
 int ENOMEM ;
 int MLX5E_MAX_BUSDMA_RX_SEGS ;
 void* MLX5E_MAX_RX_BYTES ;
 int MLX5E_NET_IP_ALIGN ;
 int MLX5_HW_START_PADDING ;
 int MT_DATA ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int bus_dmamap_load_mbuf_sg (int ,int ,struct mbuf*,TYPE_4__*,int*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 void* cpu_to_be32 (int) ;
 void* cpu_to_be64 (int ) ;
 int m_adj (struct mbuf*,int ) ;
 int m_freem (struct mbuf*) ;
 void* m_getjcl (int ,int ,int ,void*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int
mlx5e_alloc_rx_wqe(struct mlx5e_rq *rq,
    struct mlx5e_rx_wqe *wqe, u16 ix)
{
 bus_dma_segment_t segs[MLX5E_MAX_BUSDMA_RX_SEGS];
 struct mbuf *mb;
 int nsegs;
 int err;
 struct mbuf *mb_head;
 int i;

 if (rq->mbuf[ix].mbuf != ((void*)0))
  return (0);

 mb_head = mb = m_getjcl(M_NOWAIT, MT_DATA, M_PKTHDR,
     MLX5E_MAX_RX_BYTES);
 if (unlikely(mb == ((void*)0)))
  return (-ENOMEM);

 mb->m_len = MLX5E_MAX_RX_BYTES;
 mb->m_pkthdr.len = MLX5E_MAX_RX_BYTES;

 for (i = 1; i < rq->nsegs; i++) {
  if (mb_head->m_pkthdr.len >= rq->wqe_sz)
   break;
  mb = mb->m_next = m_getjcl(M_NOWAIT, MT_DATA, 0,
      MLX5E_MAX_RX_BYTES);
  if (unlikely(mb == ((void*)0))) {
   m_freem(mb_head);
   return (-ENOMEM);
  }
  mb->m_len = MLX5E_MAX_RX_BYTES;
  mb_head->m_pkthdr.len += MLX5E_MAX_RX_BYTES;
 }

 mb = mb_head;


 m_adj(mb, MLX5E_NET_IP_ALIGN);

 err = -bus_dmamap_load_mbuf_sg(rq->dma_tag, rq->mbuf[ix].dma_map,
     mb, segs, &nsegs, BUS_DMA_NOWAIT);
 if (err != 0)
  goto err_free_mbuf;
 if (unlikely(nsegs == 0)) {
  bus_dmamap_unload(rq->dma_tag, rq->mbuf[ix].dma_map);
  err = -ENOMEM;
  goto err_free_mbuf;
 }
 wqe->data[0].addr = cpu_to_be64(segs[0].ds_addr);
 wqe->data[0].byte_count = cpu_to_be32(segs[0].ds_len |
     MLX5_HW_START_PADDING);
 for (i = 1; i != nsegs; i++) {
  wqe->data[i].addr = cpu_to_be64(segs[i].ds_addr);
  wqe->data[i].byte_count = cpu_to_be32(segs[i].ds_len);
 }
 for (; i < rq->nsegs; i++) {
  wqe->data[i].addr = 0;
  wqe->data[i].byte_count = 0;
 }

 rq->mbuf[ix].mbuf = mb;
 rq->mbuf[ix].data = mb->m_data;

 bus_dmamap_sync(rq->dma_tag, rq->mbuf[ix].dma_map,
     BUS_DMASYNC_PREREAD);
 return (0);

err_free_mbuf:
 m_freem(mb);
 return (err);
}
