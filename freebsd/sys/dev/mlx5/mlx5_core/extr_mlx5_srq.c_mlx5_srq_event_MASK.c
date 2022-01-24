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
struct mlx5_core_srq {int /*<<< orphan*/  free; int /*<<< orphan*/  refcount; int /*<<< orphan*/  (* event ) (struct mlx5_core_srq*,int) ;} ;
struct TYPE_2__ {struct mlx5_srq_table srq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ) ; 
 struct mlx5_core_srq* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_core_srq*,int) ; 

void FUNC8(struct mlx5_core_dev *dev, u32 srqn, int event_type)
{
	struct mlx5_srq_table *table = &dev->priv.srq_table;
	struct mlx5_core_srq *srq;

	FUNC5(&table->lock);

	srq = FUNC4(&table->tree, srqn);
	if (srq)
		FUNC1(&srq->refcount);

	FUNC6(&table->lock);

	if (!srq) {
		FUNC3(dev, "Async event for bogus SRQ 0x%08x\n", srqn);
		return;
	}

	srq->event(srq, event_type);

	if (FUNC0(&srq->refcount))
		FUNC2(&srq->free);
}