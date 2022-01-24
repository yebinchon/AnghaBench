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
struct mlx4_ib_qp {int port; TYPE_2__* counter_index; } ;
struct mlx4_ib_dev {TYPE_1__* counters_table; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  list; int /*<<< orphan*/  index; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mlx4_ib_dev *dev,
				    struct mlx4_ib_qp *qp)
{
	FUNC3(&dev->counters_table[qp->port - 1].mutex);
	FUNC2(dev->dev, qp->counter_index->index);
	FUNC1(&qp->counter_index->list);
	FUNC4(&dev->counters_table[qp->port - 1].mutex);

	FUNC0(qp->counter_index);
	qp->counter_index = NULL;
}