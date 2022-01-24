#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  list; } ;
struct mlx5_flow_table {TYPE_1__ base; int /*<<< orphan*/  id; int /*<<< orphan*/  type; } ;
struct mlx5_flow_root_namespace {struct mlx5_flow_table* root_ft; int /*<<< orphan*/  dev; } ;
struct fs_prio {int /*<<< orphan*/  objs; } ;
struct TYPE_4__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 TYPE_2__ base ; 
 struct mlx5_flow_table* FUNC0 (struct fs_prio*) ; 
 int /*<<< orphan*/  FUNC1 (struct fs_prio*,struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mlx5_flow_table* FUNC4 (struct mlx5_flow_table*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mlx5_flow_root_namespace *root,
				    struct mlx5_flow_table *ft)
{
	int err = 0;
	struct fs_prio *prio;
	struct mlx5_flow_table *next_ft = NULL;
	struct mlx5_flow_table *put_ft = NULL;

	if (root->root_ft != ft)
		return 0;

	FUNC1(prio, ft);
	/*Assuming objs containis only flow tables and
	 * flow tables are sorted by level.
	 */
	if (!FUNC3(&ft->base.list, &prio->objs)) {
		next_ft = FUNC4(ft, base.list);
	} else {
		next_ft = FUNC0(prio);
		put_ft = next_ft;
	}

	if (next_ft) {
		err = FUNC5(root->dev, next_ft->type,
					      next_ft->id);
		if (err)
			FUNC6(root->dev, "Update root flow table of id=%u failed\n",
				       ft->id);
	}
	if (!err)
		root->root_ft = next_ft;

	if (put_ft)
		FUNC2(&put_ft->base);

	return err;
}