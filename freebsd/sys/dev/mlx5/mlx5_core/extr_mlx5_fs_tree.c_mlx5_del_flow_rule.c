
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_rule {int base; } ;
struct mlx5_flow_namespace {int dests_rw_sem; } ;


 int down_read (int *) ;
 int fs_remove_node (int *) ;
 struct mlx5_flow_namespace* get_ns_with_notifiers (int *) ;
 int up_read (int *) ;

void mlx5_del_flow_rule(struct mlx5_flow_rule *dst)
{
 struct mlx5_flow_namespace *ns;

 ns = get_ns_with_notifiers(&dst->base);
 if (ns)
  down_read(&ns->dests_rw_sem);
 fs_remove_node(&dst->base);
 if (ns)
  up_read(&ns->dests_rw_sem);
}
