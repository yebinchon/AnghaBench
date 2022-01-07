
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_qp_table {int qp_table; int auxc_table; int altc_table; int rdmarc_table; int cmpt_table; } ;
struct mlx4_priv {struct mlx4_qp_table qp_table; } ;
struct mlx4_dev {int dummy; } ;


 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_table_put (struct mlx4_dev*,int *,int) ;

void __mlx4_qp_free_icm(struct mlx4_dev *dev, int qpn)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_qp_table *qp_table = &priv->qp_table;

 mlx4_table_put(dev, &qp_table->cmpt_table, qpn);
 mlx4_table_put(dev, &qp_table->rdmarc_table, qpn);
 mlx4_table_put(dev, &qp_table->altc_table, qpn);
 mlx4_table_put(dev, &qp_table->auxc_table, qpn);
 mlx4_table_put(dev, &qp_table->qp_table, qpn);
}
