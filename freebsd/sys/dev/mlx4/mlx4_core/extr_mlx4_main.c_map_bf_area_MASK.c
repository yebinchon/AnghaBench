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
struct mlx4_priv {int /*<<< orphan*/  bf_mapping; } ;
struct TYPE_4__ {int num_uars; int /*<<< orphan*/  bf_reg_size; } ;
struct mlx4_dev {TYPE_2__ caps; TYPE_1__* persist; } ;
typedef  scalar_t__ resource_size_t ;
struct TYPE_3__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 struct mlx4_priv* FUNC1 (struct mlx4_dev*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC1(dev);
	resource_size_t bf_start;
	resource_size_t bf_len;
	int err = 0;

	if (!dev->caps.bf_reg_size)
		return -ENXIO;

	bf_start = FUNC3(dev->persist->pdev, 2) +
			(dev->caps.num_uars << PAGE_SHIFT);
	bf_len = FUNC2(dev->persist->pdev, 2) -
			(dev->caps.num_uars << PAGE_SHIFT);
	priv->bf_mapping = FUNC0(bf_start, bf_len);
	if (!priv->bf_mapping)
		err = -ENOMEM;

	return err;
}