
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_priv {int tdn; int * tisn; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef int in ;


 void* MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_ST_SZ_DW (int ) ;
 int create_tis_in ;
 int ctx ;
 int memset (int *,int ,int) ;
 int mlx5_core_create_tis (struct mlx5_core_dev*,int *,int,int *) ;
 int prio ;
 int transport_domain ;

__attribute__((used)) static int
mlx5e_open_tis(struct mlx5e_priv *priv, int tc)
{
 struct mlx5_core_dev *mdev = priv->mdev;
 u32 in[MLX5_ST_SZ_DW(create_tis_in)];
 void *tisc = MLX5_ADDR_OF(create_tis_in, in, ctx);

 memset(in, 0, sizeof(in));

 MLX5_SET(tisc, tisc, prio, tc);
 MLX5_SET(tisc, tisc, transport_domain, priv->tdn);

 return (mlx5_core_create_tis(mdev, in, sizeof(in), &priv->tisn[tc]));
}
