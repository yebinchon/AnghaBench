
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* segs; struct mbuf* mbuf; int dma_map; } ;
struct mlx4_en_rx_ring {TYPE_1__ spare; void* rx_mr_key_be; int dma_tag; } ;
struct mlx4_en_rx_mbuf {struct mbuf* mbuf; int dma_map; } ;
struct mlx4_en_rx_desc {TYPE_2__* data; } ;
struct mbuf {int dummy; } ;
typedef int bus_dmamap_t ;
struct TYPE_7__ {scalar_t__ ds_len; scalar_t__ ds_addr; } ;
typedef TYPE_3__ bus_dma_segment_t ;
struct TYPE_6__ {void* addr; void* lkey; void* byte_count; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMA_NOWAIT ;
 int ENOMEM ;
 int MLX4_EN_MAX_RX_SEGS ;
 scalar_t__ MLX4_EN_MEMTYPE_PAD ;
 int MLX4_NET_IP_ALIGN ;
 int bus_dmamap_load_mbuf_sg (int ,int ,struct mbuf*,TYPE_3__*,int*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 void* cpu_to_be32 (scalar_t__) ;
 void* cpu_to_be64 (scalar_t__) ;
 scalar_t__ likely (int ) ;
 int m_adj (struct mbuf*,int ) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* mlx4_en_alloc_mbuf (struct mlx4_en_rx_ring*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
mlx4_en_alloc_buf(struct mlx4_en_rx_ring *ring, struct mlx4_en_rx_desc *rx_desc,
    struct mlx4_en_rx_mbuf *mb_list)
{
 bus_dma_segment_t segs[MLX4_EN_MAX_RX_SEGS];
 bus_dmamap_t map;
 struct mbuf *mb;
 int nsegs;
 int err;

 int i;



 if (unlikely(ring->spare.mbuf == ((void*)0))) {
  mb = mlx4_en_alloc_mbuf(ring);
  if (unlikely(mb == ((void*)0)))
   return (-ENOMEM);


  m_adj(mb, MLX4_NET_IP_ALIGN);


  err = -bus_dmamap_load_mbuf_sg(ring->dma_tag, ring->spare.dma_map,
      mb, ring->spare.segs, &nsegs, BUS_DMA_NOWAIT);
  if (unlikely(err != 0)) {
   m_freem(mb);
   return (err);
  }


  ring->spare.mbuf = mb;



  for (i = nsegs; i != MLX4_EN_MAX_RX_SEGS; i++) {
   ring->spare.segs[i].ds_addr = 0;
   ring->spare.segs[i].ds_len = 0;
  }

  bus_dmamap_sync(ring->dma_tag, ring->spare.dma_map,
      BUS_DMASYNC_PREREAD);
 }


 if (likely(mb_list->mbuf != ((void*)0))) {
  bus_dmamap_sync(ring->dma_tag, mb_list->dma_map,
      BUS_DMASYNC_POSTREAD);
  bus_dmamap_unload(ring->dma_tag, mb_list->dma_map);
 }

 mb = mlx4_en_alloc_mbuf(ring);
 if (unlikely(mb == ((void*)0)))
  goto use_spare;


 m_adj(mb, MLX4_NET_IP_ALIGN);

 err = -bus_dmamap_load_mbuf_sg(ring->dma_tag, mb_list->dma_map,
     mb, segs, &nsegs, BUS_DMA_NOWAIT);
 if (unlikely(err != 0)) {
  m_freem(mb);
  goto use_spare;
 }




 for (i = 0; i != nsegs; i++) {
  rx_desc->data[i].byte_count = cpu_to_be32(segs[i].ds_len);
  rx_desc->data[i].lkey = ring->rx_mr_key_be;
  rx_desc->data[i].addr = cpu_to_be64(segs[i].ds_addr);
 }
 for (; i != MLX4_EN_MAX_RX_SEGS; i++) {
  rx_desc->data[i].byte_count = 0;
  rx_desc->data[i].lkey = cpu_to_be32(MLX4_EN_MEMTYPE_PAD);
  rx_desc->data[i].addr = 0;
 }

 mb_list->mbuf = mb;

 bus_dmamap_sync(ring->dma_tag, mb_list->dma_map, BUS_DMASYNC_PREREAD);
 return (0);

use_spare:

 map = mb_list->dma_map;
 mb_list->dma_map = ring->spare.dma_map;
 ring->spare.dma_map = map;


 mb_list->mbuf = ring->spare.mbuf;
 ring->spare.mbuf = ((void*)0);





 for (i = 0; i != MLX4_EN_MAX_RX_SEGS; i++) {
  if (ring->spare.segs[i].ds_len != 0) {
   rx_desc->data[i].byte_count = cpu_to_be32(ring->spare.segs[i].ds_len);
   rx_desc->data[i].lkey = ring->rx_mr_key_be;
   rx_desc->data[i].addr = cpu_to_be64(ring->spare.segs[i].ds_addr);
  } else {
   rx_desc->data[i].byte_count = 0;
   rx_desc->data[i].lkey = cpu_to_be32(MLX4_EN_MEMTYPE_PAD);
   rx_desc->data[i].addr = 0;
  }
 }

 return (0);
}
