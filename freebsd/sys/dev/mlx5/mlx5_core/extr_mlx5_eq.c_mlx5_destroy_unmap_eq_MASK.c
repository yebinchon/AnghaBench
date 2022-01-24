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
struct mlx5_eq {size_t irqn; int /*<<< orphan*/  buf; int /*<<< orphan*/  eqn; } ;
struct TYPE_4__ {TYPE_1__* msix_arr; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx5_eq*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ) ; 

int FUNC4(struct mlx5_core_dev *dev, struct mlx5_eq *eq)
{
	int err;

	FUNC0(dev->priv.msix_arr[eq->irqn].vector, eq);
	err = FUNC2(dev, eq->eqn);
	if (err)
		FUNC3(dev, "failed to destroy a previously created eq: eqn %d\n",
			       eq->eqn);
	FUNC1(dev, &eq->buf);

	return err;
}