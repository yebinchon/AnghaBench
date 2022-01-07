
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_tx_ring {int size; int prod; int cons; } ;


 int HEADROOM ;
 int MLX4_EN_TX_WQE_MAX_WQEBBS ;

__attribute__((used)) static bool
mlx4_en_tx_ring_is_full(struct mlx4_en_tx_ring *ring)
{
 int wqs;
 wqs = ring->size - (ring->prod - ring->cons);
 return (wqs < (HEADROOM + (2 * MLX4_EN_TX_WQE_MAX_WQEBBS)));
}
