
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;


 int mlx5e_destroy_inner_rss_flow_table (struct mlx5e_priv*) ;
 int mlx5e_destroy_main_flow_table (struct mlx5e_priv*) ;
 int mlx5e_destroy_vlan_flow_table (struct mlx5e_priv*) ;
 int mlx5e_handle_ifp_addr (struct mlx5e_priv*) ;

void
mlx5e_close_flow_table(struct mlx5e_priv *priv)
{

 mlx5e_handle_ifp_addr(priv);
 mlx5e_destroy_inner_rss_flow_table(priv);
 mlx5e_destroy_main_flow_table(priv);
 mlx5e_destroy_vlan_flow_table(priv);
}
