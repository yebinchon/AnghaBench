
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_priv {scalar_t__ port_up; } ;
struct ifnet {int dummy; } ;


 int if_qflush (struct ifnet*) ;
 struct mlx4_en_priv* netdev_priv (struct ifnet*) ;

void
mlx4_en_qflush(struct ifnet *dev)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);

 if (priv->port_up == 0)
  return;

 if_qflush(dev);
}
