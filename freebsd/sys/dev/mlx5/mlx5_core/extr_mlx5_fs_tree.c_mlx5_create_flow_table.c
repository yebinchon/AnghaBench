
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_namespace {int dummy; } ;


 struct mlx5_flow_table* create_ft_common (struct mlx5_flow_namespace*,int ,int,int,char const*) ;

struct mlx5_flow_table *mlx5_create_flow_table(struct mlx5_flow_namespace *ns,
            int prio,
            const char *name,
            int num_flow_table_entries)
{
 return create_ft_common(ns, 0, prio, num_flow_table_entries, name);
}
