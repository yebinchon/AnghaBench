
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx4_en_priv {TYPE_1__* mdev; int drop_qp; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int en_err (struct mlx4_en_priv*,char*) ;
 int mlx4_qp_alloc (int ,int ,int *,int ) ;
 int mlx4_qp_release_range (int ,int ,int) ;
 int mlx4_qp_reserve_range (int ,int,int,int *,int ) ;

int mlx4_en_create_drop_qp(struct mlx4_en_priv *priv)
{
 int err;
 u32 qpn;

 err = mlx4_qp_reserve_range(priv->mdev->dev, 1, 1, &qpn, 0);
 if (err) {
  en_err(priv, "Failed reserving drop qpn\n");
  return err;
 }
 err = mlx4_qp_alloc(priv->mdev->dev, qpn, &priv->drop_qp, GFP_KERNEL);
 if (err) {
  en_err(priv, "Failed allocating drop qp\n");
  mlx4_qp_release_range(priv->mdev->dev, qpn, 1);
  return err;
 }

 return 0;
}
