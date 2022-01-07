
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* slave_state; } ;
struct TYPE_10__ {TYPE_4__ master; } ;
struct mlx4_priv {TYPE_5__ mfunc; } ;
struct mlx4_eqe {int dummy; } ;
struct TYPE_7__ {int function; } ;
struct mlx4_dev {TYPE_2__ caps; TYPE_1__* persist; } ;
struct TYPE_8__ {int active; } ;
struct TYPE_6__ {int num_vfs; } ;


 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int slave_event (struct mlx4_dev*,int,struct mlx4_eqe*) ;

__attribute__((used)) static void mlx4_slave_event(struct mlx4_dev *dev, int slave,
        struct mlx4_eqe *eqe)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 if (slave < 0 || slave > dev->persist->num_vfs ||
     slave == dev->caps.function ||
     !priv->mfunc.master.slave_state[slave].active)
  return;

 slave_event(dev, slave, eqe);
}
