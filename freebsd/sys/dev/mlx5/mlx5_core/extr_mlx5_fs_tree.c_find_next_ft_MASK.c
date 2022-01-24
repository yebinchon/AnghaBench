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
struct mlx5_flow_table {int dummy; } ;
struct fs_base {int /*<<< orphan*/  list; } ;
struct mlx5_flow_namespace {struct fs_base base; } ;
struct fs_prio {struct fs_base base; } ;

/* Variables and functions */
 struct mlx5_flow_table* FUNC0 (struct mlx5_flow_namespace*,int /*<<< orphan*/ *) ; 
 struct mlx5_flow_table* FUNC1 (struct mlx5_flow_namespace*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_flow_namespace*,struct mlx5_flow_namespace*) ; 

__attribute__((used)) static struct mlx5_flow_table *FUNC3(struct fs_prio *prio)
{
	struct mlx5_flow_table *ft = NULL;
	struct fs_base *curr_base;

	while (!ft && prio) {
		struct mlx5_flow_namespace *ns;

		FUNC2(ns, prio);
		ft = FUNC1(ns, &prio->base.list);
		curr_base = &ns->base;
		FUNC2(prio, ns);

		if (!ft && prio)
			ft = FUNC0(prio, &curr_base->list);
	}
	return ft;
}