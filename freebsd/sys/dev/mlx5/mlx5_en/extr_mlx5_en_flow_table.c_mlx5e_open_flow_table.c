
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ns; } ;
struct mlx5e_priv {int mdev; TYPE_1__ fts; } ;


 int MLX5_FLOW_NAMESPACE_KERNEL ;
 int mlx5_get_flow_namespace (int ,int ) ;
 int mlx5e_create_inner_rss_flow_table (struct mlx5e_priv*) ;
 int mlx5e_create_main_flow_table (struct mlx5e_priv*) ;
 int mlx5e_create_vlan_flow_table (struct mlx5e_priv*) ;
 int mlx5e_destroy_main_flow_table (struct mlx5e_priv*) ;
 int mlx5e_destroy_vlan_flow_table (struct mlx5e_priv*) ;

int
mlx5e_open_flow_table(struct mlx5e_priv *priv)
{
 int err;

 priv->fts.ns = mlx5_get_flow_namespace(priv->mdev,
            MLX5_FLOW_NAMESPACE_KERNEL);

 err = mlx5e_create_vlan_flow_table(priv);
 if (err)
  return (err);

 err = mlx5e_create_main_flow_table(priv);
 if (err)
  goto err_destroy_vlan_flow_table;

 err = mlx5e_create_inner_rss_flow_table(priv);
 if (err)
  goto err_destroy_main_flow_table;

 return (0);

err_destroy_main_flow_table:
 mlx5e_destroy_main_flow_table(priv);
err_destroy_vlan_flow_table:
 mlx5e_destroy_vlan_flow_table(priv);

 return (err);
}
