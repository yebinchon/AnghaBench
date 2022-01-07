
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int qpn; } ;
struct mlx4_en_priv {TYPE_1__* mdev; TYPE_2__ drop_qp; } ;
struct TYPE_4__ {int dev; } ;


 int mlx4_qp_free (int ,TYPE_2__*) ;
 int mlx4_qp_release_range (int ,int ,int) ;
 int mlx4_qp_remove (int ,TYPE_2__*) ;

void mlx4_en_destroy_drop_qp(struct mlx4_en_priv *priv)
{
 u32 qpn;

 qpn = priv->drop_qp.qpn;
 mlx4_qp_remove(priv->mdev->dev, &priv->drop_qp);
 mlx4_qp_free(priv->mdev->dev, &priv->drop_qp);
 mlx4_qp_release_range(priv->mdev->dev, qpn, 1);
}
