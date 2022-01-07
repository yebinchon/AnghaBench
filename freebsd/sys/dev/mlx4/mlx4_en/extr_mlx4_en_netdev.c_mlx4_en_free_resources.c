
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_en_priv {int tx_ring_num; int rx_ring_num; int stat_ctx; int * stat_sysctl; scalar_t__* rx_cq; TYPE_2__* prof; scalar_t__* rx_ring; scalar_t__* tx_cq; scalar_t__* tx_ring; TYPE_1__* dev; } ;
struct TYPE_4__ {int rx_ring_size; } ;
struct TYPE_3__ {int * rx_cpu_rmap; } ;


 int free_irq_cpu_rmap (int *) ;
 int mlx4_en_destroy_cq (struct mlx4_en_priv*,scalar_t__*) ;
 int mlx4_en_destroy_rx_ring (struct mlx4_en_priv*,scalar_t__*,int ) ;
 int mlx4_en_destroy_tx_ring (struct mlx4_en_priv*,scalar_t__*) ;
 int sysctl_ctx_free (int *) ;

void mlx4_en_free_resources(struct mlx4_en_priv *priv)
{
 int i;
 for (i = 0; i < priv->tx_ring_num; i++) {
  if (priv->tx_ring && priv->tx_ring[i])
   mlx4_en_destroy_tx_ring(priv, &priv->tx_ring[i]);
  if (priv->tx_cq && priv->tx_cq[i])
   mlx4_en_destroy_cq(priv, &priv->tx_cq[i]);
 }

 for (i = 0; i < priv->rx_ring_num; i++) {
  if (priv->rx_ring[i])
   mlx4_en_destroy_rx_ring(priv, &priv->rx_ring[i],
    priv->prof->rx_ring_size);
  if (priv->rx_cq[i])
   mlx4_en_destroy_cq(priv, &priv->rx_cq[i]);
 }

 if (priv->stat_sysctl != ((void*)0))
  sysctl_ctx_free(&priv->stat_ctx);
}
