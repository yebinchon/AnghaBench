
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_rx_ring {int buf; int lro; } ;
struct mlx4_en_rx_desc {int dummy; } ;
struct mlx4_en_priv {int dummy; } ;


 int TXBB_SIZE ;
 int mlx4_en_free_rx_buf (struct mlx4_en_priv*,struct mlx4_en_rx_ring*) ;
 int tcp_lro_free (int *) ;

void mlx4_en_deactivate_rx_ring(struct mlx4_en_priv *priv,
    struct mlx4_en_rx_ring *ring)
{



 mlx4_en_free_rx_buf(priv, ring);
 if (sizeof(struct mlx4_en_rx_desc) <= TXBB_SIZE)
  ring->buf -= TXBB_SIZE;
}
