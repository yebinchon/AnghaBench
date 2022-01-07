
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_mr {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_core_create_mkey_cb (struct mlx5_core_dev*,struct mlx5_core_mr*,int *,int,int *,int ,int *,int *) ;

int mlx5_core_create_mkey(struct mlx5_core_dev *dev,
     struct mlx5_core_mr *mkey,
     u32 *in, int inlen)
{
 return mlx5_core_create_mkey_cb(dev, mkey, in, inlen,
     ((void*)0), 0, ((void*)0), ((void*)0));
}
