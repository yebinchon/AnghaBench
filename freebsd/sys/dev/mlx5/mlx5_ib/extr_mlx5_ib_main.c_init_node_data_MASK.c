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
struct TYPE_2__ {int /*<<< orphan*/  node_guid; int /*<<< orphan*/  node_desc; } ;
struct mlx5_ib_dev {TYPE_1__ ib_dev; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5_ib_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_ib_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct mlx5_ib_dev *dev)
{
	int err;

	err = FUNC0(dev, dev->ib_dev.node_desc);
	if (err)
		return err;

	return FUNC1(dev, &dev->ib_dev.node_guid);
}