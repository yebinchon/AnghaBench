
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mlx4_en_tx_ring {int comp_lock; scalar_t__ last_nr_txbb; scalar_t__ cons; scalar_t__ prod; } ;
struct TYPE_2__ {int tx_poll; } ;
struct mlx4_en_priv {scalar_t__ port_up; TYPE_1__ pstats; struct mlx4_en_tx_ring** tx_ring; } ;
struct mlx4_en_cq {size_t ring; int timer; int dev; } ;


 int INC_PERF_COUNTER (int ) ;
 scalar_t__ MLX4_EN_TX_POLL_TIMEOUT ;
 scalar_t__ jiffies ;
 int mlx4_en_process_tx_cq (int ,struct mlx4_en_cq*) ;
 int mod_timer (int *,scalar_t__) ;
 struct mlx4_en_priv* netdev_priv (int ) ;
 int spin_trylock (int *) ;
 int spin_unlock (int *) ;

void mlx4_en_poll_tx_cq(unsigned long data)
{
 struct mlx4_en_cq *cq = (struct mlx4_en_cq *) data;
 struct mlx4_en_priv *priv = netdev_priv(cq->dev);
 struct mlx4_en_tx_ring *ring = priv->tx_ring[cq->ring];
 u32 inflight;

 INC_PERF_COUNTER(priv->pstats.tx_poll);

 if (priv->port_up == 0)
  return;
 if (!spin_trylock(&ring->comp_lock)) {
  mod_timer(&cq->timer, jiffies + MLX4_EN_TX_POLL_TIMEOUT);
  return;
 }
 mlx4_en_process_tx_cq(cq->dev, cq);
 inflight = (u32) (ring->prod - ring->cons - ring->last_nr_txbb);




 if (inflight && priv->port_up)
  mod_timer(&cq->timer, jiffies + MLX4_EN_TX_POLL_TIMEOUT);

 spin_unlock(&ring->comp_lock);
}
