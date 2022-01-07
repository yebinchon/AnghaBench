
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_qp_table {int zones; } ;
struct mlx4_priv {struct mlx4_qp_table qp_table; } ;
struct mlx4_dev {int dummy; } ;


 scalar_t__ mlx4_is_qp_reserved (struct mlx4_dev*,int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_zone_free_entries_unique (int ,int,int) ;

void __mlx4_qp_release_range(struct mlx4_dev *dev, int base_qpn, int cnt)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_qp_table *qp_table = &priv->qp_table;

 if (mlx4_is_qp_reserved(dev, (u32) base_qpn))
  return;
 mlx4_zone_free_entries_unique(qp_table->zones, base_qpn, cnt);
}
