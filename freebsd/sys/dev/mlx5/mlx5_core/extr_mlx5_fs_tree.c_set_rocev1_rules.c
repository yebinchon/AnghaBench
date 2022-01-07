
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_rule_node {int match_criteria_enable; int list; int match_value; int match_criteria; } ;
struct list_head {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS ;
 int MLX5_SET (int ,int ,int ,int) ;
 int ROCEV1_ETHERTYPE ;
 int ethertype ;
 int fte_match_set_lyr_2_4 ;
 struct mlx5_flow_rule_node* kzalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static int set_rocev1_rules(struct list_head *rules_list)
{
 struct mlx5_flow_rule_node *rocev1_rule;

 rocev1_rule = kzalloc(sizeof(*rocev1_rule), GFP_KERNEL);
 if (!rocev1_rule)
  return -ENOMEM;

 rocev1_rule->match_criteria_enable =
  1 << MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS;
 MLX5_SET(fte_match_set_lyr_2_4, rocev1_rule->match_criteria, ethertype,
   0xffff);
 MLX5_SET(fte_match_set_lyr_2_4, rocev1_rule->match_value, ethertype,
   ROCEV1_ETHERTYPE);

 list_add_tail(&rocev1_rule->list, rules_list);

 return 0;
}
