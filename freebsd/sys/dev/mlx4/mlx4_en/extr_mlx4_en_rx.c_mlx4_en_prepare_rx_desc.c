
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_en_rx_ring {struct mlx4_en_rx_mbuf* mbuf; scalar_t__ buf; } ;
struct mlx4_en_rx_mbuf {int * mbuf; } ;
struct mlx4_en_rx_desc {int dummy; } ;
struct TYPE_2__ {int rx_alloc_failed; } ;
struct mlx4_en_priv {TYPE_1__ port_stats; } ;


 int ENOMEM ;
 scalar_t__ mlx4_en_alloc_buf (struct mlx4_en_rx_ring*,struct mlx4_en_rx_desc*,struct mlx4_en_rx_mbuf*) ;

__attribute__((used)) static int
mlx4_en_prepare_rx_desc(struct mlx4_en_priv *priv,
    struct mlx4_en_rx_ring *ring, int index)
{
 struct mlx4_en_rx_desc *rx_desc =
     ((struct mlx4_en_rx_desc *)ring->buf) + index;
 struct mlx4_en_rx_mbuf *mb_list = ring->mbuf + index;

 mb_list->mbuf = ((void*)0);

 if (mlx4_en_alloc_buf(ring, rx_desc, mb_list)) {
  priv->port_stats.rx_alloc_failed++;
  return (-ENOMEM);
 }
 return (0);
}
