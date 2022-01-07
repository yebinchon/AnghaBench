
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_group {int base; } ;


 int fs_remove_node (int *) ;

void mlx5_destroy_flow_group(struct mlx5_flow_group *fg)
{
 fs_remove_node(&fg->base);
}
