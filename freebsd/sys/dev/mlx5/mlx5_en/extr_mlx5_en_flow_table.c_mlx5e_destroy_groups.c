
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_flow_table {int num_groups; int ** g; } ;


 int IS_ERR_OR_NULL (int *) ;
 int mlx5_destroy_flow_group (int *) ;

__attribute__((used)) static void
mlx5e_destroy_groups(struct mlx5e_flow_table *ft)
{
 int i;

 for (i = ft->num_groups - 1; i >= 0; i--) {
  if (!IS_ERR_OR_NULL(ft->g[i]))
   mlx5_destroy_flow_group(ft->g[i]);
  ft->g[i] = ((void*)0);
 }
 ft->num_groups = 0;
}
