
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ num_channels; } ;
struct mlx5e_priv {int counter_set_id; int mdev; int state; struct ifnet* ifp; TYPE_1__ params; } ;
struct ifnet {struct mlx5e_priv* if_softc; } ;


 int MLX5E_STATE_OPENED ;
 int MLX5_INTERFACE_PROTOCOL_ETH ;
 int mlx5_en_err (struct ifnet*,char*,int) ;
 int mlx5_en_info (struct ifnet*,char*,scalar_t__,scalar_t__) ;
 int mlx5_vport_alloc_q_counter (int ,int ,int *) ;
 int mlx5_vport_dealloc_q_counter (int ,int ,int ) ;
 int mlx5e_add_all_vlan_rules (struct mlx5e_priv*) ;
 int mlx5e_close_channels (struct mlx5e_priv*) ;
 int mlx5e_close_flow_table (struct mlx5e_priv*) ;
 int mlx5e_close_rqt (struct mlx5e_priv*) ;
 int mlx5e_close_tirs (struct mlx5e_priv*) ;
 int mlx5e_close_tises (struct mlx5e_priv*) ;
 int mlx5e_open_channels (struct mlx5e_priv*) ;
 int mlx5e_open_flow_table (struct mlx5e_priv*) ;
 int mlx5e_open_rqt (struct mlx5e_priv*) ;
 int mlx5e_open_tirs (struct mlx5e_priv*) ;
 int mlx5e_open_tises (struct mlx5e_priv*) ;
 int mlx5e_set_rx_mode_core (struct mlx5e_priv*) ;
 int mlx5e_update_carrier (struct mlx5e_priv*) ;
 scalar_t__ rss_getnumbuckets () ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int
mlx5e_open_locked(struct ifnet *ifp)
{
 struct mlx5e_priv *priv = ifp->if_softc;
 int err;
 u16 set_id;


 if (test_bit(MLX5E_STATE_OPENED, &priv->state) != 0)
  return (0);
 err = mlx5e_open_tises(priv);
 if (err) {
  mlx5_en_err(ifp, "mlx5e_open_tises failed, %d\n", err);
  return (err);
 }
 err = mlx5_vport_alloc_q_counter(priv->mdev,
     MLX5_INTERFACE_PROTOCOL_ETH, &set_id);
 if (err) {
  mlx5_en_err(priv->ifp,
      "mlx5_vport_alloc_q_counter failed: %d\n", err);
  goto err_close_tises;
 }

 priv->counter_set_id = set_id;

 err = mlx5e_open_channels(priv);
 if (err) {
  mlx5_en_err(ifp,
      "mlx5e_open_channels failed, %d\n", err);
  goto err_dalloc_q_counter;
 }
 err = mlx5e_open_rqt(priv);
 if (err) {
  mlx5_en_err(ifp, "mlx5e_open_rqt failed, %d\n", err);
  goto err_close_channels;
 }
 err = mlx5e_open_tirs(priv);
 if (err) {
  mlx5_en_err(ifp, "mlx5e_open_tir failed, %d\n", err);
  goto err_close_rqls;
 }
 err = mlx5e_open_flow_table(priv);
 if (err) {
  mlx5_en_err(ifp,
      "mlx5e_open_flow_table failed, %d\n", err);
  goto err_close_tirs;
 }
 err = mlx5e_add_all_vlan_rules(priv);
 if (err) {
  mlx5_en_err(ifp,
      "mlx5e_add_all_vlan_rules failed, %d\n", err);
  goto err_close_flow_table;
 }
 set_bit(MLX5E_STATE_OPENED, &priv->state);

 mlx5e_update_carrier(priv);
 mlx5e_set_rx_mode_core(priv);

 return (0);

err_close_flow_table:
 mlx5e_close_flow_table(priv);

err_close_tirs:
 mlx5e_close_tirs(priv);

err_close_rqls:
 mlx5e_close_rqt(priv);

err_close_channels:
 mlx5e_close_channels(priv);

err_dalloc_q_counter:
 mlx5_vport_dealloc_q_counter(priv->mdev,
     MLX5_INTERFACE_PROTOCOL_ETH, priv->counter_set_id);

err_close_tises:
 mlx5e_close_tises(priv);

 return (err);
}
