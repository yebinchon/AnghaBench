#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx5_flow_rule_node {int match_criteria_enable; int /*<<< orphan*/  list; int /*<<< orphan*/  match_value; int /*<<< orphan*/  match_criteria; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int ROCEV1_ETHERTYPE ; 
 int /*<<< orphan*/  ethertype ; 
 int /*<<< orphan*/  fte_match_set_lyr_2_4 ; 
 struct mlx5_flow_rule_node* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static int FUNC3(struct list_head *rules_list)
{
	struct mlx5_flow_rule_node *rocev1_rule;

	rocev1_rule = FUNC1(sizeof(*rocev1_rule), GFP_KERNEL);
	if (!rocev1_rule)
		return -ENOMEM;

	rocev1_rule->match_criteria_enable =
		1 << MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS;
	FUNC0(fte_match_set_lyr_2_4, rocev1_rule->match_criteria, ethertype,
		 0xffff);
	FUNC0(fte_match_set_lyr_2_4, rocev1_rule->match_value, ethertype,
		 ROCEV1_ETHERTYPE);

	FUNC2(&rocev1_rule->list, rules_list);

	return 0;
}