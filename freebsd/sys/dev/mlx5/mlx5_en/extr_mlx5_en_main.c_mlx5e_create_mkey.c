
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; struct ifnet* ifp; } ;
struct mlx5_core_mr {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;
struct ifnet {int dummy; } ;


 int ENOMEM ;
 int MLX5_ACCESS_MODE_PA ;
 void* MLX5_ADDR_OF (int ,int*,int ) ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int access_mode ;
 int create_mkey_in ;
 int kvfree (int*) ;
 int length64 ;
 int lr ;
 int lw ;
 int memory_key_mkey_entry ;
 int mlx5_core_create_mkey (struct mlx5_core_dev*,struct mlx5_core_mr*,int*,int) ;
 int mlx5_en_err (struct ifnet*,char*,...) ;
 int* mlx5_vzalloc (int) ;
 int pd ;
 int qpn ;

__attribute__((used)) static int
mlx5e_create_mkey(struct mlx5e_priv *priv, u32 pdn,
    struct mlx5_core_mr *mkey)
{
 struct ifnet *ifp = priv->ifp;
 struct mlx5_core_dev *mdev = priv->mdev;
 int inlen = MLX5_ST_SZ_BYTES(create_mkey_in);
 void *mkc;
 u32 *in;
 int err;

 in = mlx5_vzalloc(inlen);
 if (in == ((void*)0)) {
  mlx5_en_err(ifp, "failed to allocate inbox\n");
  return (-ENOMEM);
 }

 mkc = MLX5_ADDR_OF(create_mkey_in, in, memory_key_mkey_entry);
 MLX5_SET(mkc, mkc, access_mode, MLX5_ACCESS_MODE_PA);
 MLX5_SET(mkc, mkc, lw, 1);
 MLX5_SET(mkc, mkc, lr, 1);

 MLX5_SET(mkc, mkc, pd, pdn);
 MLX5_SET(mkc, mkc, length64, 1);
 MLX5_SET(mkc, mkc, qpn, 0xffffff);

 err = mlx5_core_create_mkey(mdev, mkey, in, inlen);
 if (err)
  mlx5_en_err(ifp, "mlx5_core_create_mkey failed, %d\n",
      err);

 kvfree(in);
 return (err);
}
