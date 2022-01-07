
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* vf_admin; } ;
struct TYPE_8__ {TYPE_3__ master; } ;
struct mlx4_priv {TYPE_4__ mfunc; } ;
struct mlx4_dev {int dummy; } ;
typedef int __be64 ;
struct TYPE_6__ {TYPE_1__* vport; } ;
struct TYPE_5__ {int guid; } ;


 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

void mlx4_set_admin_guid(struct mlx4_dev *dev, __be64 guid, int entry, int port)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 priv->mfunc.master.vf_admin[entry].vport[port].guid = guid;
}
