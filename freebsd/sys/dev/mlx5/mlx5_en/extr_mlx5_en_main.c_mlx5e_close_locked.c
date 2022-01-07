
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int counter_set_id; int mdev; int ifp; int state; } ;
struct ifnet {struct mlx5e_priv* if_softc; } ;


 int LINK_STATE_DOWN ;
 int MLX5E_STATE_OPENED ;
 int MLX5_INTERFACE_PROTOCOL_ETH ;
 int clear_bit (int ,int *) ;
 int if_link_state_change (int ,int ) ;
 int mlx5_vport_dealloc_q_counter (int ,int ,int ) ;
 int mlx5e_close_channels (struct mlx5e_priv*) ;
 int mlx5e_close_flow_table (struct mlx5e_priv*) ;
 int mlx5e_close_rqt (struct mlx5e_priv*) ;
 int mlx5e_close_tirs (struct mlx5e_priv*) ;
 int mlx5e_close_tises (struct mlx5e_priv*) ;
 int mlx5e_del_all_vlan_rules (struct mlx5e_priv*) ;
 int mlx5e_set_rx_mode_core (struct mlx5e_priv*) ;
 scalar_t__ test_bit (int ,int *) ;

int
mlx5e_close_locked(struct ifnet *ifp)
{
 struct mlx5e_priv *priv = ifp->if_softc;


 if (test_bit(MLX5E_STATE_OPENED, &priv->state) == 0)
  return (0);

 clear_bit(MLX5E_STATE_OPENED, &priv->state);

 mlx5e_set_rx_mode_core(priv);
 mlx5e_del_all_vlan_rules(priv);
 if_link_state_change(priv->ifp, LINK_STATE_DOWN);
 mlx5e_close_flow_table(priv);
 mlx5e_close_tirs(priv);
 mlx5e_close_rqt(priv);
 mlx5e_close_channels(priv);
 mlx5_vport_dealloc_q_counter(priv->mdev,
     MLX5_INTERFACE_PROTOCOL_ETH, priv->counter_set_id);
 mlx5e_close_tises(priv);

 return (0);
}
