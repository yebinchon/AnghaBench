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
struct mlx5_cq_table {int /*<<< orphan*/  lock; int /*<<< orphan*/  tree; } ;
struct TYPE_2__ {struct mlx5_cq_table cq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct mlx5_core_cq {int /*<<< orphan*/  free; int /*<<< orphan*/  refcount; int /*<<< orphan*/  (* event ) (struct mlx5_core_cq*,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ) ; 
 struct mlx5_core_cq* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_core_cq*,int) ; 

void FUNC8(struct mlx5_core_dev *dev, u32 cqn, int event_type)
{
	struct mlx5_cq_table *table = &dev->priv.cq_table;
	struct mlx5_core_cq *cq;

	FUNC5(&table->lock);

	cq = FUNC4(&table->tree, cqn);
	if (cq)
		FUNC1(&cq->refcount);

	FUNC6(&table->lock);

	if (!cq) {
		FUNC3(dev, "Async event for bogus CQ 0x%x\n", cqn);
		return;
	}

	cq->event(cq, event_type);

	if (FUNC0(&cq->refcount))
		FUNC2(&cq->free);
}