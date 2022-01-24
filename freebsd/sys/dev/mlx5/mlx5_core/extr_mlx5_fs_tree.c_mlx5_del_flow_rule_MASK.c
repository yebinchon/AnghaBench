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
struct mlx5_flow_rule {int /*<<< orphan*/  base; } ;
struct mlx5_flow_namespace {int /*<<< orphan*/  dests_rw_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mlx5_flow_namespace* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mlx5_flow_rule *dst)
{
	struct mlx5_flow_namespace *ns;

	ns = FUNC2(&dst->base);
	if (ns)
		FUNC0(&ns->dests_rw_sem);
	FUNC1(&dst->base);
	if (ns)
		FUNC3(&ns->dests_rw_sem);
}