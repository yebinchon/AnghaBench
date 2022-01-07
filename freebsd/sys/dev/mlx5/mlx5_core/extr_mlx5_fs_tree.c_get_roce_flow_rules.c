
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_flow_rules_list {int head; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MLX5_ROCE_VERSION_1_CAP ;
 int MLX5_ROCE_VERSION_2_CAP ;
 struct mlx5_flow_rules_list* kzalloc (int,int ) ;
 int mlx5_del_flow_rules_list (struct mlx5_flow_rules_list*) ;
 int set_rocev1_rules (int *) ;
 int set_rocev2_rules (int *) ;

struct mlx5_flow_rules_list *get_roce_flow_rules(u8 roce_mode)
{
 int err = 0;
 struct mlx5_flow_rules_list *rules_list =
  kzalloc(sizeof(*rules_list), GFP_KERNEL);

 if (!rules_list)
  return ((void*)0);

 INIT_LIST_HEAD(&rules_list->head);

 if (roce_mode & MLX5_ROCE_VERSION_1_CAP) {
  err = set_rocev1_rules(&rules_list->head);
  if (err)
   goto free_list;
 }
 if (roce_mode & MLX5_ROCE_VERSION_2_CAP)
  err = set_rocev2_rules(&rules_list->head);
 if (err)
  goto free_list;

 return rules_list;

free_list:
 mlx5_del_flow_rules_list(rules_list);
 return ((void*)0);
}
