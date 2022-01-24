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
typedef  size_t u32 ;
struct mlx5_cq_table {int /*<<< orphan*/  lock; int /*<<< orphan*/  tree; struct mlx5_cq_linear_array_entry* linear_array; } ;
struct mlx5_cq_linear_array_entry {int /*<<< orphan*/  lock; struct mlx5_core_cq* cq; } ;
struct TYPE_2__ {struct mlx5_cq_table cq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct mlx5_core_cq {int /*<<< orphan*/  free; int /*<<< orphan*/  refcount; int /*<<< orphan*/  (* comp ) (struct mlx5_core_cq*) ;int /*<<< orphan*/  arm_sn; } ;

/* Variables and functions */
 size_t MLX5_CQ_LINEAR_ARRAY_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct mlx5_core_cq*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,char*,size_t) ; 
 struct mlx5_core_cq* FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_core_cq*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_core_cq*) ; 

void FUNC10(struct mlx5_core_dev *dev, u32 cqn)
{
	struct mlx5_core_cq *cq;
	struct mlx5_cq_table *table = &dev->priv.cq_table;

	if (cqn < MLX5_CQ_LINEAR_ARRAY_SIZE) {
		struct mlx5_cq_linear_array_entry *entry;

		entry = &table->linear_array[cqn];
		FUNC6(&entry->lock);
		cq = entry->cq;
		if (cq == NULL) {
			FUNC4(dev,
			    "Completion event for bogus CQ 0x%x\n", cqn);
		} else {
			++cq->arm_sn;
			cq->comp(cq);
		}
		FUNC7(&entry->lock);
		return;
	}

	FUNC6(&table->lock);
	cq = FUNC5(&table->tree, cqn);
	if (FUNC3(cq))
		FUNC1(&cq->refcount);
	FUNC7(&table->lock);

	if (!cq) {
		FUNC4(dev, "Completion event for bogus CQ 0x%x\n", cqn);
		return;
	}

	++cq->arm_sn;

	cq->comp(cq);

	if (FUNC0(&cq->refcount))
		FUNC2(&cq->free);
}