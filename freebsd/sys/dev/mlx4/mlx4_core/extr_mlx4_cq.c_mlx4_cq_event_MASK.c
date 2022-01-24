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
typedef  int u32 ;
struct TYPE_3__ {int num_cqs; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cq_table {int /*<<< orphan*/  lock; int /*<<< orphan*/  tree; } ;
struct mlx4_cq {int /*<<< orphan*/  free; int /*<<< orphan*/  refcount; int /*<<< orphan*/  (* event ) (struct mlx4_cq*,int) ;} ;
struct TYPE_4__ {struct mlx4_cq_table cq_table; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,char*,int) ; 
 struct mlx4_cq* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_cq*,int) ; 

void FUNC9(struct mlx4_dev *dev, u32 cqn, int event_type)
{
	struct mlx4_cq_table *cq_table = &FUNC3(dev)->cq_table;
	struct mlx4_cq *cq;

	FUNC6(&cq_table->lock);

	cq = FUNC5(&cq_table->tree, cqn & (dev->caps.num_cqs - 1));
	if (cq)
		FUNC1(&cq->refcount);

	FUNC7(&cq_table->lock);

	if (!cq) {
		FUNC4(dev, "Async event for bogus CQ %08x\n", cqn);
		return;
	}

	cq->event(cq, event_type);

	if (FUNC0(&cq->refcount))
		FUNC2(&cq->free);
}