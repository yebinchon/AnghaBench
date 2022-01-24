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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_flow_table {int /*<<< orphan*/  base; } ;
struct mlx5_flow_rule {int dummy; } ;
struct mlx5_flow_namespace {int /*<<< orphan*/  dests_rw_sem; } ;
struct mlx5_flow_destination {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mlx5_flow_rule* FUNC1 (struct mlx5_flow_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx5_flow_destination*) ; 
 struct mlx5_flow_namespace* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct mlx5_flow_rule *
FUNC4(struct mlx5_flow_table *ft,
		   u8 match_criteria_enable,
		   u32 *match_criteria,
		   u32 *match_value,
		   u32 action,
		   u32 flow_tag,
		   struct mlx5_flow_destination *dest)
{
	struct mlx5_flow_rule *dst;
	struct mlx5_flow_namespace *ns;

	ns = FUNC2(&ft->base);
	if (ns)
		FUNC0(&ns->dests_rw_sem);
	dst =  FUNC1(ft, match_criteria_enable, match_criteria,
			     match_value, action, flow_tag, dest);
	if (ns)
		FUNC3(&ns->dests_rw_sem);

	return dst;


}