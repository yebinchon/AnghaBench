
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_rx_ring {int dma_tag; } ;
struct mlx4_en_rx_mbuf {int * mbuf; int dma_map; } ;
typedef int bus_dmamap_t ;


 int BUS_DMASYNC_POSTREAD ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
mlx4_en_free_buf(struct mlx4_en_rx_ring *ring, struct mlx4_en_rx_mbuf *mb_list)
{
 bus_dmamap_t map = mb_list->dma_map;
 bus_dmamap_sync(ring->dma_tag, map, BUS_DMASYNC_POSTREAD);
 bus_dmamap_unload(ring->dma_tag, map);
 m_freem(mb_list->mbuf);
 mb_list->mbuf = ((void*)0);
}
