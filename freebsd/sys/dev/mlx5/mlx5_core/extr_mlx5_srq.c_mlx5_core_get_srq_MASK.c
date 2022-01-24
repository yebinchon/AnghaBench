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
struct mlx5_srq_table {int /*<<< orphan*/  lock; int /*<<< orphan*/  tree; } ;
struct mlx5_core_srq {int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {struct mlx5_srq_table srq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mlx5_core_srq* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct mlx5_core_srq *FUNC4(struct mlx5_core_dev *dev, u32 srqn)
{
	struct mlx5_srq_table *table = &dev->priv.srq_table;
	struct mlx5_core_srq *srq;

	FUNC2(&table->lock);

	srq = FUNC1(&table->tree, srqn);
	if (srq)
		FUNC0(&srq->refcount);

	FUNC3(&table->lock);

	return srq;
}