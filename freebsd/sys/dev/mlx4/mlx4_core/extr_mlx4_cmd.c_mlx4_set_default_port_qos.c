
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_qos_manager {int priority_bm; } ;
struct TYPE_3__ {struct mlx4_qos_manager* qos_ctl; } ;
struct TYPE_4__ {TYPE_1__ master; } ;
struct mlx4_priv {TYPE_2__ mfunc; } ;
struct mlx4_dev {int dummy; } ;


 int MLX4_DEFAULT_QOS_PRIO ;
 int MLX4_NUM_UP ;
 int bitmap_zero (int ,int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static void mlx4_set_default_port_qos(struct mlx4_dev *dev, int port)
{
 struct mlx4_qos_manager *port_qos_ctl;
 struct mlx4_priv *priv = mlx4_priv(dev);

 port_qos_ctl = &priv->mfunc.master.qos_ctl[port];
 bitmap_zero(port_qos_ctl->priority_bm, MLX4_NUM_UP);


 set_bit(MLX4_DEFAULT_QOS_PRIO, port_qos_ctl->priority_bm);
}
