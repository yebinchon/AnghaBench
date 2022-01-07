
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_namespace {int dests_rw_sem; int notifiers_rw_sem; } ;
struct mlx5_flow_handler {int list; struct mlx5_flow_namespace* ns; } ;


 int down_write (int *) ;
 int iterate_rules_in_ns (struct mlx5_flow_namespace*,int ,struct mlx5_flow_handler*) ;
 int kfree (struct mlx5_flow_handler*) ;
 int list_del (int *) ;
 int remove_from_clients ;
 int up_write (int *) ;

void mlx5_unregister_rule_notifier(struct mlx5_flow_handler *handler)
{
 struct mlx5_flow_namespace *ns = handler->ns;


 down_write(&ns->dests_rw_sem);
 down_write(&ns->notifiers_rw_sem);
 iterate_rules_in_ns(ns, remove_from_clients, handler);
 list_del(&handler->list);
 up_write(&ns->notifiers_rw_sem);
 up_write(&ns->dests_rw_sem);
 kfree(handler);
}
