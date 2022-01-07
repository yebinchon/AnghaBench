
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_priority_flow_control; int rx_priority_flow_control; int tx_pauseframe_control; int rx_pauseframe_control; } ;
struct mlx5e_priv {TYPE_1__ params; int mdev; } ;


 int mlx5_set_port_pause_and_pfc (int ,int,int ,int ,int ,int ) ;

__attribute__((used)) static int
mlx5e_set_port_pause_and_pfc(struct mlx5e_priv *priv)
{
 return (mlx5_set_port_pause_and_pfc(priv->mdev, 1,
     priv->params.rx_pauseframe_control,
     priv->params.tx_pauseframe_control,
     priv->params.rx_priority_flow_control,
     priv->params.tx_priority_flow_control));
}
