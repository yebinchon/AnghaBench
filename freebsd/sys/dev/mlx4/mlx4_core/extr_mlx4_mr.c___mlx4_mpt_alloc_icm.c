
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx4_mr_table {int dmpt_table; } ;
struct mlx4_dev {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct mlx4_mr_table mr_table; } ;


 TYPE_1__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_table_get (struct mlx4_dev*,int *,int ,int ) ;

int __mlx4_mpt_alloc_icm(struct mlx4_dev *dev, u32 index, gfp_t gfp)
{
 struct mlx4_mr_table *mr_table = &mlx4_priv(dev)->mr_table;

 return mlx4_table_get(dev, &mr_table->dmpt_table, index, gfp);
}
