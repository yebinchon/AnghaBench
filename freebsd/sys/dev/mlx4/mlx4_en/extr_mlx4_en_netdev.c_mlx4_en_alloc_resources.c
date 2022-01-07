
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_en_priv {int rx_ring_num; int tx_ring_num; int port_up; scalar_t__* tx_cq; scalar_t__* tx_ring; scalar_t__* rx_cq; scalar_t__* rx_ring; TYPE_1__* dev; struct mlx4_en_port_profile* prof; } ;
struct mlx4_en_port_profile {int rx_ring_size; int tx_ring_size; } ;
struct TYPE_2__ {int rx_cpu_rmap; } ;


 int ENOMEM ;
 int RX ;
 int TX ;
 int TXBB_SIZE ;
 int alloc_irq_cpu_rmap (int) ;
 int en_err (struct mlx4_en_priv*,char*) ;
 scalar_t__ mlx4_en_create_cq (struct mlx4_en_priv*,scalar_t__*,int ,int,int ,int) ;
 scalar_t__ mlx4_en_create_rx_ring (struct mlx4_en_priv*,scalar_t__*,int ,int) ;
 scalar_t__ mlx4_en_create_tx_ring (struct mlx4_en_priv*,scalar_t__*,int ,int ,int,int) ;
 int mlx4_en_destroy_cq (struct mlx4_en_priv*,scalar_t__*) ;
 int mlx4_en_destroy_rx_ring (struct mlx4_en_priv*,scalar_t__*,int ) ;
 int mlx4_en_destroy_tx_ring (struct mlx4_en_priv*,scalar_t__*) ;
 int mlx4_en_sysctl_stat (struct mlx4_en_priv*) ;

int mlx4_en_alloc_resources(struct mlx4_en_priv *priv)
{
 struct mlx4_en_port_profile *prof = priv->prof;
 int i;
 int node = 0;


 for (i = 0; i < priv->rx_ring_num; i++) {
  if (mlx4_en_create_cq(priv, &priv->rx_cq[i],
          prof->rx_ring_size, i, RX, node))
   goto err;

  if (mlx4_en_create_rx_ring(priv, &priv->rx_ring[i],
        prof->rx_ring_size, node))
   goto err;
 }


 for (i = 0; i < priv->tx_ring_num; i++) {
  if (mlx4_en_create_cq(priv, &priv->tx_cq[i],
          prof->tx_ring_size, i, TX, node))
   goto err;

  if (mlx4_en_create_tx_ring(priv, &priv->tx_ring[i],
        prof->tx_ring_size, TXBB_SIZE, node, i))
   goto err;
 }







 mlx4_en_sysctl_stat(priv);
 return 0;

err:
 en_err(priv, "Failed to allocate NIC resources\n");
 for (i = 0; i < priv->rx_ring_num; i++) {
  if (priv->rx_ring[i])
   mlx4_en_destroy_rx_ring(priv, &priv->rx_ring[i],
      prof->rx_ring_size);
  if (priv->rx_cq[i])
   mlx4_en_destroy_cq(priv, &priv->rx_cq[i]);
 }
 for (i = 0; i < priv->tx_ring_num; i++) {
  if (priv->tx_ring[i])
   mlx4_en_destroy_tx_ring(priv, &priv->tx_ring[i]);
  if (priv->tx_cq[i])
   mlx4_en_destroy_cq(priv, &priv->tx_cq[i]);
 }
 priv->port_up = 0;
 return -ENOMEM;
}
