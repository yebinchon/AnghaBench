
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct mlx5_flow_rule {TYPE_1__ base; int dest_attr; } ;
struct fs_fte {int dests; int base; } ;


 int call_to_add_rule_notifiers (struct mlx5_flow_rule*,struct fs_fte*) ;
 int fs_add_node (TYPE_1__*,int *,char*,int) ;
 char* get_dest_name (int *) ;
 int kfree (char*) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void add_rule_to_tree(struct mlx5_flow_rule *rule,
        struct fs_fte *fte)
{
 char *dest_name;

 dest_name = get_dest_name(&rule->dest_attr);
 fs_add_node(&rule->base, &fte->base, dest_name, 1);

 list_add_tail(&rule->base.list, &fte->dests);
 kfree(dest_name);
 call_to_add_rule_notifiers(rule, fte);
}
