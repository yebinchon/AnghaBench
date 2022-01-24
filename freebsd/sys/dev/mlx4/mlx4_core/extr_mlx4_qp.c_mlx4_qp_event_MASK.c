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
struct mlx4_qp_table {int /*<<< orphan*/  lock; } ;
struct mlx4_qp {int /*<<< orphan*/  free; int /*<<< orphan*/  refcount; int /*<<< orphan*/  (* event ) (struct mlx4_qp*,int) ;} ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {struct mlx4_qp_table qp_table; } ;

/* Variables and functions */
 struct mlx4_qp* FUNC0 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_qp*,int) ; 

void FUNC9(struct mlx4_dev *dev, u32 qpn, int event_type)
{
	struct mlx4_qp_table *qp_table = &FUNC5(dev)->qp_table;
	struct mlx4_qp *qp;

	FUNC6(&qp_table->lock);

	qp = FUNC0(dev, qpn);
	if (qp)
		FUNC2(&qp->refcount);

	FUNC7(&qp_table->lock);

	if (!qp) {
		FUNC4(dev, "Async event for none existent QP %08x\n", qpn);
		return;
	}

	qp->event(qp, event_type);

	if (FUNC1(&qp->refcount))
		FUNC3(&qp->free);
}