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
typedef  int u8 ;
struct mlx5_flow_rules_list {int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MLX5_ROCE_VERSION_1_CAP ; 
 int MLX5_ROCE_VERSION_2_CAP ; 
 struct mlx5_flow_rules_list* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_flow_rules_list*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

struct mlx5_flow_rules_list *FUNC5(u8 roce_mode)
{
	int err = 0;
	struct mlx5_flow_rules_list *rules_list =
		FUNC1(sizeof(*rules_list), GFP_KERNEL);

	if (!rules_list)
		return NULL;

	FUNC0(&rules_list->head);

	if (roce_mode & MLX5_ROCE_VERSION_1_CAP) {
		err = FUNC3(&rules_list->head);
		if (err)
			goto free_list;
	}
	if (roce_mode & MLX5_ROCE_VERSION_2_CAP)
		err = FUNC4(&rules_list->head);
	if (err)
		goto free_list;

	return rules_list;

free_list:
	FUNC2(rules_list);
	return NULL;
}