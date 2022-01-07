
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int main; } ;
struct mlx5e_priv {TYPE_1__ fts; } ;


 int mlx5e_destroy_flow_table (int *) ;

__attribute__((used)) static void mlx5e_destroy_main_flow_table(struct mlx5e_priv *priv)
{
 mlx5e_destroy_flow_table(&priv->fts.main);
}
