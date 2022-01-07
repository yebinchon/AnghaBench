
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_tx_ring {int poll_cnt; int comp_lock; } ;
struct mlx4_en_priv {scalar_t__ port_up; int dev; struct mlx4_en_tx_ring** tx_ring; struct mlx4_en_cq** tx_cq; } ;
struct mlx4_en_cq {int timer; } ;


 int MLX4_EN_TX_POLL_MODER ;
 scalar_t__ MLX4_EN_TX_POLL_TIMEOUT ;
 scalar_t__ jiffies ;
 int mlx4_en_process_tx_cq (int ,struct mlx4_en_cq*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ spin_trylock (int *) ;
 int spin_unlock (int *) ;
 int timer_pending (int *) ;

__attribute__((used)) static inline void mlx4_en_xmit_poll(struct mlx4_en_priv *priv, int tx_ind)
{
 struct mlx4_en_cq *cq = priv->tx_cq[tx_ind];
 struct mlx4_en_tx_ring *ring = priv->tx_ring[tx_ind];

 if (priv->port_up == 0)
  return;



 if (!timer_pending(&cq->timer))
  mod_timer(&cq->timer, jiffies + MLX4_EN_TX_POLL_TIMEOUT);


 if ((++ring->poll_cnt & (MLX4_EN_TX_POLL_MODER - 1)) == 0)
  if (spin_trylock(&ring->comp_lock)) {
   mlx4_en_process_tx_cq(priv->dev, cq);
   spin_unlock(&ring->comp_lock);
  }
}
