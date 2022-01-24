#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int num_cqs; } ;
struct mlx4_dev {TYPE_2__ caps; } ;
struct mlx4_cq {int /*<<< orphan*/  (* comp ) (struct mlx4_cq*) ;int /*<<< orphan*/  arm_sn; } ;
struct TYPE_4__ {int /*<<< orphan*/  tree; } ;
struct TYPE_6__ {TYPE_1__ cq_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,char*,int) ; 
 TYPE_3__* FUNC1 (struct mlx4_dev*) ; 
 struct mlx4_cq* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_cq*) ; 

void FUNC4(struct mlx4_dev *dev, u32 cqn)
{
	struct mlx4_cq *cq;

	cq = FUNC2(&FUNC1(dev)->cq_table.tree,
			       cqn & (dev->caps.num_cqs - 1));
	if (!cq) {
		FUNC0(dev, "Completion event for bogus CQ %08x\n", cqn);
		return;
	}

	++cq->arm_sn;

	cq->comp(cq);
}