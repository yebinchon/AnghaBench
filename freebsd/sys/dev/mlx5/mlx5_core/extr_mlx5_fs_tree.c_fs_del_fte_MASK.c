#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct mlx5_flow_table {int /*<<< orphan*/  num_ftes; TYPE_1__ base; int /*<<< orphan*/  index; int /*<<< orphan*/  id; int /*<<< orphan*/  type; int /*<<< orphan*/  status; int /*<<< orphan*/  vport; } ;
struct mlx5_flow_group {int /*<<< orphan*/  num_ftes; TYPE_1__ base; int /*<<< orphan*/  index; int /*<<< orphan*/  id; int /*<<< orphan*/  type; int /*<<< orphan*/  status; int /*<<< orphan*/  vport; } ;
struct mlx5_core_dev {int dummy; } ;
struct fs_fte {int /*<<< orphan*/  num_ftes; TYPE_1__ base; int /*<<< orphan*/  index; int /*<<< orphan*/  id; int /*<<< orphan*/  type; int /*<<< orphan*/  status; int /*<<< orphan*/  vport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mlx5_core_dev* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_flow_table*,struct mlx5_flow_table*) ; 
 int FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct fs_fte *fte)
{
	struct mlx5_flow_table *ft;
	struct mlx5_flow_group *fg;
	int err;
	struct mlx5_core_dev *dev;

	FUNC2(fg, fte);
	FUNC2(ft, fg);

	dev = FUNC1(&ft->base);
	FUNC0(!dev);

	err = FUNC3(dev, ft->vport, &fte->status,
				     ft->type, ft->id, fte->index);
	if (err)
		FUNC4(dev, "flow steering can't delete fte %s\n",
			       fte->base.name);

	fg->num_ftes--;
}