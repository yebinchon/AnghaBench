
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_table {int dummy; } ;
struct fs_base {int list; } ;
struct mlx5_flow_namespace {struct fs_base base; } ;
struct fs_prio {struct fs_base base; } ;


 struct mlx5_flow_table* _find_first_ft_in_prio (struct mlx5_flow_namespace*,int *) ;
 struct mlx5_flow_table* find_first_ft_in_ns (struct mlx5_flow_namespace*,int *) ;
 int fs_get_parent (struct mlx5_flow_namespace*,struct mlx5_flow_namespace*) ;

__attribute__((used)) static struct mlx5_flow_table *find_next_ft(struct fs_prio *prio)
{
 struct mlx5_flow_table *ft = ((void*)0);
 struct fs_base *curr_base;

 while (!ft && prio) {
  struct mlx5_flow_namespace *ns;

  fs_get_parent(ns, prio);
  ft = find_first_ft_in_ns(ns, &prio->base.list);
  curr_base = &ns->base;
  fs_get_parent(prio, ns);

  if (!ft && prio)
   ft = _find_first_ft_in_prio(prio, &curr_base->list);
 }
 return ft;
}
