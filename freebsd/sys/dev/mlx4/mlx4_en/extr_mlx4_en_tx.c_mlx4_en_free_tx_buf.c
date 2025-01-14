
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct mlx4_en_tx_ring {int cons; int last_nr_txbb; int prod; scalar_t__ size; int size_mask; } ;
struct mlx4_en_priv {int dummy; } ;


 int DRV ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,int,...) ;
 int en_warn (struct mlx4_en_priv*,char*) ;
 int mlx4_en_free_tx_desc (struct mlx4_en_priv*,struct mlx4_en_tx_ring*,int) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

int mlx4_en_free_tx_buf(struct net_device *dev, struct mlx4_en_tx_ring *ring)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 int cnt = 0;


 ring->cons += ring->last_nr_txbb;
 en_dbg(DRV, priv, "Freeing Tx buf - cons:0x%x prod:0x%x\n",
   ring->cons, ring->prod);

 if ((u32) (ring->prod - ring->cons) > ring->size) {
                en_warn(priv, "Tx consumer passed producer!\n");
  return 0;
 }

 while (ring->cons != ring->prod) {
  ring->last_nr_txbb = mlx4_en_free_tx_desc(priv, ring,
      ring->cons & ring->size_mask);
  ring->cons += ring->last_nr_txbb;
  cnt++;
 }

 if (cnt)
  en_dbg(DRV, priv, "Freed %d uncompleted tx descriptors\n", cnt);

 return cnt;
}
