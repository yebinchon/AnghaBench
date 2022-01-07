
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct TYPE_4__ {int dma_map; int * mbuf; } ;
struct TYPE_6__ {int buf; } ;
struct mlx4_en_rx_ring {int dma_tag; TYPE_2__* mbuf; TYPE_1__ spare; TYPE_3__ wqres; } ;
struct mlx4_en_rx_desc {int dummy; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; } ;
struct TYPE_5__ {int dma_map; } ;


 int BUS_DMASYNC_POSTREAD ;
 scalar_t__ TXBB_SIZE ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int kfree (struct mlx4_en_rx_ring*) ;
 int m_freem (int *) ;
 int mlx4_en_cleanup_filters (struct mlx4_en_priv*,struct mlx4_en_rx_ring*) ;
 int mlx4_en_unmap_buffer (int *) ;
 int mlx4_free_hwq_res (int ,TYPE_3__*,scalar_t__) ;
 int vfree (TYPE_2__*) ;

void mlx4_en_destroy_rx_ring(struct mlx4_en_priv *priv,
        struct mlx4_en_rx_ring **pring,
        u32 size)
{
 struct mlx4_en_dev *mdev = priv->mdev;
 struct mlx4_en_rx_ring *ring = *pring;
 uint32_t x;

 mlx4_en_unmap_buffer(&ring->wqres.buf);
 mlx4_free_hwq_res(mdev->dev, &ring->wqres, size * sizeof(struct mlx4_en_rx_desc) + TXBB_SIZE);
 for (x = 0; x != size; x++)
  bus_dmamap_destroy(ring->dma_tag, ring->mbuf[x].dma_map);

 if (ring->spare.mbuf != ((void*)0)) {
  bus_dmamap_sync(ring->dma_tag, ring->spare.dma_map,
      BUS_DMASYNC_POSTREAD);
  bus_dmamap_unload(ring->dma_tag, ring->spare.dma_map);
  m_freem(ring->spare.mbuf);
 }
 bus_dmamap_destroy(ring->dma_tag, ring->spare.dma_map);
 vfree(ring->mbuf);
 bus_dma_tag_destroy(ring->dma_tag);
 kfree(ring);
 *pring = ((void*)0);



}
