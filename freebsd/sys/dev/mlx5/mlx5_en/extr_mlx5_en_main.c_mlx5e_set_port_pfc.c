
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tx_pauseframe_control; scalar_t__ rx_pauseframe_control; } ;
struct mlx5e_priv {scalar_t__ gone; int ifp; TYPE_1__ params; } ;


 int EINVAL ;
 int ENXIO ;
 int mlx5_en_err (int ,char*) ;
 int mlx5e_set_port_pause_and_pfc (struct mlx5e_priv*) ;

__attribute__((used)) static int
mlx5e_set_port_pfc(struct mlx5e_priv *priv)
{
 int error;

 if (priv->gone != 0) {
  error = -ENXIO;
 } else if (priv->params.rx_pauseframe_control ||
     priv->params.tx_pauseframe_control) {
  mlx5_en_err(priv->ifp,
      "Global pauseframes must be disabled before enabling PFC.\n");
  error = -EINVAL;
 } else {
  error = mlx5e_set_port_pause_and_pfc(priv);
 }
 return (error);
}
