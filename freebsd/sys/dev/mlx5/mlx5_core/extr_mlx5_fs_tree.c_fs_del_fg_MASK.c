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
struct TYPE_2__ {int /*<<< orphan*/  num_types; scalar_t__ active; } ;
struct mlx5_flow_table {int /*<<< orphan*/  id; int /*<<< orphan*/  type; int /*<<< orphan*/  vport; TYPE_1__ autogroup; int /*<<< orphan*/  base; } ;
struct mlx5_flow_group {int /*<<< orphan*/  id; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mlx5_core_dev* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_flow_table*,struct mlx5_flow_group*) ; 
 scalar_t__ FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,char*) ; 

__attribute__((used)) static void FUNC5(struct mlx5_flow_group *fg)
{
	struct mlx5_flow_table *parent_ft;
	struct mlx5_core_dev *dev;

	FUNC2(parent_ft, fg);
	dev = FUNC1(&parent_ft->base);
	FUNC0(!dev);

	if (parent_ft->autogroup.active)
		parent_ft->autogroup.num_types--;

	if (FUNC3(dev, parent_ft->vport,
				   parent_ft->type,
				   parent_ft->id, fg->id))
		FUNC4(dev, "flow steering can't destroy fg\n");
}