
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlx4_en_rx_ring {int cons; int prod; scalar_t__ actual_size; int size_mask; scalar_t__ mbuf; } ;
struct mlx4_en_priv {int dummy; } ;


 int BUG_ON (int) ;
 int DRV ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,int,...) ;
 int mlx4_en_free_buf (struct mlx4_en_rx_ring*,scalar_t__) ;

__attribute__((used)) static void mlx4_en_free_rx_buf(struct mlx4_en_priv *priv,
    struct mlx4_en_rx_ring *ring)
{
 int index;

 en_dbg(DRV, priv, "Freeing Rx buf - cons:%d prod:%d\n",
        ring->cons, ring->prod);


 BUG_ON((u32) (ring->prod - ring->cons) > ring->actual_size);
 while (ring->cons != ring->prod) {
  index = ring->cons & ring->size_mask;
  en_dbg(DRV, priv, "Processing descriptor:%d\n", index);
  mlx4_en_free_buf(ring, ring->mbuf + index);
  ++ring->cons;
 }
}
