
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct mlx4_en_tx_ring {int dma_tag; struct mlx4_en_tx_info* tx_info; } ;
struct mlx4_en_tx_info {size_t nr_txbb; int dma_map; struct mbuf* mb; } ;
struct mlx4_en_priv {int dummy; } ;
struct mbuf {int dummy; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static u32
mlx4_en_free_tx_desc(struct mlx4_en_priv *priv,
    struct mlx4_en_tx_ring *ring, u32 index)
{
 struct mlx4_en_tx_info *tx_info;
 struct mbuf *mb;

 tx_info = &ring->tx_info[index];
 mb = tx_info->mb;

 if (mb == ((void*)0))
  goto done;

 bus_dmamap_sync(ring->dma_tag, tx_info->dma_map,
     BUS_DMASYNC_POSTWRITE);
 bus_dmamap_unload(ring->dma_tag, tx_info->dma_map);

        m_freem(mb);
done:
 return (tx_info->nr_txbb);
}
