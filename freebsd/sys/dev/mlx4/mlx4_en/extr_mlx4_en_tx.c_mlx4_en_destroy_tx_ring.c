
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_6__ {int m; } ;
struct TYPE_5__ {int m; } ;
struct TYPE_8__ {int buf; } ;
struct mlx4_en_tx_ring {size_t size; int dma_tag; TYPE_2__ comp_lock; TYPE_1__ tx_lock; TYPE_3__* tx_info; int buf_size; TYPE_4__ wqres; int qpn; int qp; int bf; scalar_t__ bf_enabled; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; } ;
struct TYPE_7__ {int dma_map; } ;


 int DRV ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,int ) ;
 int kfree (struct mlx4_en_tx_ring*) ;
 int mlx4_bf_free (int ,int *) ;
 int mlx4_en_unmap_buffer (int *) ;
 int mlx4_free_hwq_res (int ,TYPE_4__*,int ) ;
 int mlx4_qp_free (int ,int *) ;
 int mlx4_qp_release_range (int ,int ,int) ;
 int mlx4_qp_remove (int ,int *) ;
 int mtx_destroy (int *) ;
 int vfree (TYPE_3__*) ;

void mlx4_en_destroy_tx_ring(struct mlx4_en_priv *priv,
        struct mlx4_en_tx_ring **pring)
{
 struct mlx4_en_dev *mdev = priv->mdev;
 struct mlx4_en_tx_ring *ring = *pring;
 uint32_t x;
 en_dbg(DRV, priv, "Destroying tx ring, qpn: %d\n", ring->qpn);

 if (ring->bf_enabled)
  mlx4_bf_free(mdev->dev, &ring->bf);
 mlx4_qp_remove(mdev->dev, &ring->qp);
 mlx4_qp_free(mdev->dev, &ring->qp);
 mlx4_qp_release_range(priv->mdev->dev, ring->qpn, 1);
 mlx4_en_unmap_buffer(&ring->wqres.buf);
 mlx4_free_hwq_res(mdev->dev, &ring->wqres, ring->buf_size);
 for (x = 0; x != ring->size; x++)
  bus_dmamap_destroy(ring->dma_tag, ring->tx_info[x].dma_map);
 vfree(ring->tx_info);
 mtx_destroy(&ring->tx_lock.m);
 mtx_destroy(&ring->comp_lock.m);
 bus_dma_tag_destroy(ring->dma_tag);
 kfree(ring);
 *pring = ((void*)0);
}
