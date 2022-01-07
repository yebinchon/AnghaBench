
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_priv {int * tirn; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 void* MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int create_tir_in ;
 int kvfree (int *) ;
 int mlx5_core_create_tir (struct mlx5_core_dev*,int *,int,int *) ;
 int * mlx5_vzalloc (int) ;
 int mlx5e_build_tir_ctx (struct mlx5e_priv*,void*,int) ;
 int tir_context ;

__attribute__((used)) static int
mlx5e_open_tir(struct mlx5e_priv *priv, int tt)
{
 struct mlx5_core_dev *mdev = priv->mdev;
 u32 *in;
 void *tirc;
 int inlen;
 int err;

 inlen = MLX5_ST_SZ_BYTES(create_tir_in);
 in = mlx5_vzalloc(inlen);
 if (in == ((void*)0))
  return (-ENOMEM);
 tirc = MLX5_ADDR_OF(create_tir_in, in, tir_context);

 mlx5e_build_tir_ctx(priv, tirc, tt);

 err = mlx5_core_create_tir(mdev, in, inlen, &priv->tirn[tt]);

 kvfree(in);

 return (err);
}
