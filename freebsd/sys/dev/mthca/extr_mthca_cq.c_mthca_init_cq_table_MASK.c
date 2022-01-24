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
struct TYPE_3__ {int /*<<< orphan*/  alloc; int /*<<< orphan*/  cq; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_cqs; int /*<<< orphan*/  reserved_cqs; } ;
struct mthca_dev {TYPE_1__ cq_table; TYPE_2__ limits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct mthca_dev *dev)
{
	int err;

	FUNC3(&dev->cq_table.lock);

	err = FUNC1(&dev->cq_table.alloc,
			       dev->limits.num_cqs,
			       (1 << 24) - 1,
			       dev->limits.reserved_cqs);
	if (err)
		return err;

	err = FUNC2(&dev->cq_table.cq,
			       dev->limits.num_cqs);
	if (err)
		FUNC0(&dev->cq_table.alloc);

	return err;
}