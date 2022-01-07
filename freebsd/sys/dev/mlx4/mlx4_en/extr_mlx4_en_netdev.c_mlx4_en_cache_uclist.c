
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx4_en_priv {int dummy; } ;


 int if_foreach_lladdr (struct net_device*,int ,struct mlx4_en_priv*) ;
 int mlx4_copy_addr ;
 int mlx4_en_clear_uclist (struct net_device*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mlx4_en_cache_uclist(struct net_device *dev)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);

 mlx4_en_clear_uclist(dev);
 if_foreach_lladdr(dev, mlx4_copy_addr, priv);
}
