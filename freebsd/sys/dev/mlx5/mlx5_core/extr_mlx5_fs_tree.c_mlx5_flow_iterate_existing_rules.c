
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_namespace {int dests_rw_sem; int notifiers_rw_sem; } ;
typedef int rule_event_fn ;


 int down_read (int *) ;
 int down_write (int *) ;
 int iterate_rules_in_ns (struct mlx5_flow_namespace*,int ,void*) ;
 int up_read (int *) ;
 int up_write (int *) ;

void mlx5_flow_iterate_existing_rules(struct mlx5_flow_namespace *ns,
      rule_event_fn add_rule_cb,
      void *context)
{
 down_write(&ns->dests_rw_sem);
 down_read(&ns->notifiers_rw_sem);
 iterate_rules_in_ns(ns, add_rule_cb, context);
 up_read(&ns->notifiers_rw_sem);
 up_write(&ns->dests_rw_sem);
}
