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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_qp_table {int /*<<< orphan*/  lock; int /*<<< orphan*/  tree; } ;
struct mlx5_core_rsc_common {int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {struct mlx5_qp_table qp_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ) ; 
 struct mlx5_core_rsc_common* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlx5_core_rsc_common *FUNC5(struct mlx5_core_dev *dev,
						 u32 rsn)
{
	struct mlx5_qp_table *table = &dev->priv.qp_table;
	struct mlx5_core_rsc_common *common;

	FUNC3(&table->lock);

	common = FUNC2(&table->tree, rsn);
	if (common)
		FUNC0(&common->refcount);

	FUNC4(&table->lock);

	if (!common) {
		FUNC1(dev, "Async event for bogus resource 0x%x\n",
			       rsn);
		return NULL;
	}
	return common;
}