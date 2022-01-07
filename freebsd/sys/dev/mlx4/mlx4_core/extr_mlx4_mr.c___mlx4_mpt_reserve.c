
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mpt_bitmap; } ;
struct mlx4_priv {TYPE_1__ mr_table; } ;
struct mlx4_dev {int dummy; } ;


 int mlx4_bitmap_alloc (int *) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

int __mlx4_mpt_reserve(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 return mlx4_bitmap_alloc(&priv->mr_table.mpt_bitmap);
}
