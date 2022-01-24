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
struct mlx5_flow_table {TYPE_1__ base; int /*<<< orphan*/  id; int /*<<< orphan*/  type; int /*<<< orphan*/  vport; } ;
struct mlx5_core_dev {int dummy; } ;
struct fs_prio {int /*<<< orphan*/  num_ft; } ;

/* Variables and functions */
 struct mlx5_core_dev* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct fs_prio*,struct mlx5_flow_table*) ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mlx5_flow_table *ft)
{
	int err;
	struct mlx5_core_dev *dev = FUNC0(&ft->base);
	struct fs_prio *prio;

	err = FUNC2(dev, ft->vport, ft->type, ft->id);
	if (err)
		FUNC3(dev, "flow steering can't destroy ft %s\n",
			       ft->base.name);

	FUNC1(prio, ft);
	prio->num_ft--;
}